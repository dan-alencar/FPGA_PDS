import sys
import numpy as np
import sounddevice as sd
import mido
import threading
import time
from numpy.fft import fft, fftfreq
import pyqtgraph as pg
from PySide6.QtCore import QTimer
from PySide6.QtWidgets import QApplication, QWidget, QVBoxLayout, QLabel

# ===================== CONFIGURAÇÕES TÉCNICAS =====================
SAMPLE_RATE = 44100
BUFFER_SIZE = 2048
# Mapeamento oficial dos 8 Knobs do Akai MPK Mini
EFEITOS_NOMES = ["Volume", "Overdrive", "Attack", "Vibrato", "Cutoff (Filtro)", "Resonância", "Bitcrusher", "Tremolo"]

def get_note_name(midi_number):
    """Converte número MIDI em nome de nota musical (C, C#, D...)"""
    names = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    octave = (midi_number // 12) - 1
    note = names[midi_number % 12]
    return f"{note}{octave}"

# ===================== MOTOR DO SINTETIZADOR =====================
class ProfessionalSynth:
    def __init__(self):
        self.voices = {}
        self.start_times = {}
        self.release_times = {}
        self.knob = {i: 0.0 for i in range(1, 9)}
        self.knob[1] = 0.8  # Volume Master inicial
        self.knob[5] = 1.0  # Cutoff (Filtro aberto)
        self.f_low = 0.0
        self.f_band = 0.0
        self.lock = threading.Lock()

    def note_on(self, note):
        with self.lock:
            self.voices[note] = 0.0
            self.start_times[note] = time.time()
            if note in self.release_times:
                del self.release_times[note]

    def note_off(self, note):
        with self.lock:
            if note in self.voices:
                self.release_times[note] = time.time()

    def process(self, n):
        t_array = np.arange(n) / SAMPLE_RATE
        mix = np.zeros(n)
        now = time.time()
        
        with self.lock:
            for note in list(self.voices.keys()):
                phase = self.voices[note]
                start_time = self.start_times.get(note, now)
                
                # --- ENVELOPE ADSR (Ataque e Release) ---
                env = 1.0
                if note in self.release_times:
                    rel_time = 0.2  # 200ms de cauda sonora
                    elapsed_rel = now - self.release_times[note]
                    env = np.clip(1.0 - (elapsed_rel / rel_time), 0, 1)
                    if env <= 0:
                        del self.voices[note]
                        if note in self.start_times: del self.start_times[note]
                        del self.release_times[note]
                        continue
                else:
                    atk_time = self.knob[3] * 2.0 + 0.005
                    env = np.clip((now - start_time) / atk_time, 0, 1)

                # --- GERAÇÃO DE ONDA COM VIBRATO ---
                freq_base = 440.0 * (2 ** ((note - 69) / 12))
                vib = np.sin(2 * np.pi * 6.0 * (now + phase)) * (self.knob[4] * 15.0)
                freq = freq_base + vib
                
                wave = np.sin(2 * np.pi * freq * (t_array + phase))
                mix += wave * env
                self.voices[note] = (phase + n / SAMPLE_RATE) % (1.0 / freq_base)

        # --- CADEIA DE EFEITOS (DSP) ---

        # 1. Overdrive (Knob 2)
        if self.knob[2] > 0.05:
            mix = np.tanh(mix * (1.0 + self.knob[2] * 12))

        # 2. Bitcrusher (Knob 7)
        if self.knob[7] > 0.1:
            bits = np.interp(self.knob[7], [0, 1], [65536, 4])
            mix = np.round(mix * bits) / bits

        # 3. Tremolo (Knob 8)
        if self.knob[8] > 0.05:
            lfo_tremolo = (np.sin(2 * np.pi * 5.0 * now) + 1) / 2
            mix *= (1.0 - (self.knob[8] * lfo_tremolo))

        # 4. Filtro Ressonante SVF (Knobs 5 e 6)
        cutoff_freq = (self.knob[5] ** 2) * 0.8 + 0.01 
        res = 1.0 - self.knob[6]
        
        # Proteção contra instabilidade do filtro
        if np.isnan(self.f_low) or np.isinf(self.f_low):
            self.f_low, self.f_band = 0.0, 0.0

        for i in range(n):
            self.f_low += cutoff_freq * self.f_band
            f_high = mix[i] - self.f_low - res * self.f_band
            self.f_band += cutoff_freq * f_high
            mix[i] = self.f_low
            
        return mix * self.knob[1]

# ===================== INTERFACE GRÁFICA =====================
class GUI(QWidget):
    def __init__(self, synth):
        super().__init__()
        self.synth = synth
        self.setWindowTitle('Akai MPK Mini - Estúdio de Som Python')
        self.resize(750, 500)
        self.audio_data = np.zeros(BUFFER_SIZE)

        layout = QVBoxLayout()
        self.wave_plot = pg.PlotWidget(title="Osciloscópio (Tempo)")
        self.wave_curve = self.wave_plot.plot(pen='y')
        self.wave_plot.setYRange(-1, 1)
        layout.addWidget(self.wave_plot)

        self.fft_plot = pg.PlotWidget(title="Espectrograma (Frequência em Hz)")
        self.fft_curve = self.fft_plot.plot(pen='c')
        self.fft_plot.setLogMode(x=True, y=False)
        self.fft_plot.setLabel('bottom', 'Frequência', units='Hz')
        self.fft_plot.setXRange(np.log10(20), np.log10(20000))
        self.fft_plot.showGrid(x=True, y=True, alpha=0.3)
        layout.addWidget(self.fft_plot)

        self.setLayout(layout)
        self.timer = QTimer()
        self.timer.timeout.connect(self.update_plots)
        self.timer.start(30)

    def update_plots(self):
        # Gate visual para zerar os gráficos no silêncio
        if np.max(np.abs(self.audio_data)) < 0.005:
            self.wave_curve.setData(np.zeros(100))
            self.fft_curve.setData([20, 20000], [0, 0])
            return

        self.wave_curve.setData(self.audio_data[:512])
        window = np.hamming(len(self.audio_data))
        spec = np.abs(fft(self.audio_data * window))[:BUFFER_SIZE//2]
        freqs = fftfreq(BUFFER_SIZE, 1/SAMPLE_RATE)[:BUFFER_SIZE//2]
        self.fft_curve.setData(freqs + 0.1, spec / 15)

# ===================== PROCESSAMENTO MIDI =====================
synth = ProfessionalSynth()

def handle_midi(msg):
    if msg.type == 'note_on' and msg.velocity > 0:
        nome = get_note_name(msg.note)
        # Lista apenas efeitos que não estão zerados
        ativos = [EFEITOS_NOMES[i-1] for i in range(2, 9) if synth.knob[i] > 0.05]
        info_fx = f" | FX: {', '.join(ativos)}" if ativos else " | Som: Limpo"
        print(f"🎹 Nota: {nome} (MIDI {msg.note}){info_fx}")
        synth.note_on(msg.note)

    elif msg.type in ['note_off'] or (msg.type == 'note_on' and msg.velocity == 0):
        synth.note_off(msg.note)

    elif msg.type == 'control_change':
        if 1 <= msg.control <= 8:
            synth.knob[msg.control] = msg.value / 127.0
            print(f"🎛️ {EFEITOS_NOMES[msg.control-1]}: {int(synth.knob[msg.control]*100)}%")

def midi_worker():
    try:
        portas = mido.get_input_names()
        # Busca automática pela porta do Akai
        nome = next((p for p in portas if 'MPK' in p or 'MPKmini2' in p), portas[0])
        with mido.open_input(nome) as inport:
            print(f"✅ Conectado ao hardware: {nome}")
            for msg in inport: handle_midi(msg)
    except Exception as e:
        print(f"❌ Erro MIDI: {e}")

# ===================== INICIALIZAÇÃO =====================
if __name__ == '__main__':
    app = QApplication(sys.argv)
    gui = GUI(synth)
    
    # Inicia a leitura do teclado em segundo plano
    threading.Thread(target=midi_worker, daemon=True).start()
    
    def audio_callback(outdata, frames, time, status):
        audio = synth.process(frames)
        outdata[:] = audio.reshape(-1, 1)
        gui.audio_data = audio

    # Abre o fluxo de áudio
    with sd.OutputStream(channels=1, callback=audio_callback, samplerate=SAMPLE_RATE, blocksize=BUFFER_SIZE):
        gui.show()
        sys.exit(app.exec())