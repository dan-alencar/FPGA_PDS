# ============================================================
# PROJETO COMPLETO – MEMBROS 2, 3 e 4
# Sintetizador Polifônico com Síntese Aditiva + ADSR + Filtro + FFT
# FPGA NÃO incluída (simulação completa em software)
# ============================================================

import sys
import numpy as np
import sounddevice as sd
import mido
import threading
from scipy.signal import butter, lfilter
from numpy.fft import fft

from PySide6.QtWidgets import (
    QApplication, QWidget, QLabel, QSlider, QPushButton,
    QVBoxLayout
)
from PySide6.QtCore import Qt

# ===================== PARÂMETROS GERAIS =====================
SAMPLE_RATE = 44100
BUFFER_SIZE = 512
MAX_VOICES = 8

# ===================== UTILIDADES =====================
def midi_to_freq(note):
    freq = 440.0 * (2 ** ((note - 69) / 12))
    return max(50, min(freq, 5000))  # evita notas mudas

# ===================== ENVELOPE ADSR =====================
class ADSR:
    def __init__(self, a=0.01, d=0.1, s=0.7, r=0.2):
        self.a, self.d, self.s, self.r = a, d, s, r
        self.state = 'off'
        self.level = 0.0

    def trigger(self):
        self.state = 'attack'

    def release(self):
        self.state = 'release'

    def process(self, n):
        env = np.zeros(n)
        for i in range(n):
            if self.state == 'attack':
                self.level += 1 / (self.a * SAMPLE_RATE)
                if self.level >= 1:
                    self.level = 1
                    self.state = 'decay'
            elif self.state == 'decay':
                self.level -= (1 - self.s) / (self.d * SAMPLE_RATE)
                if self.level <= self.s:
                    self.level = self.s
                    self.state = 'sustain'
            elif self.state == 'sustain':
                self.level = self.s
            elif self.state == 'release':
                self.level -= self.s / (self.r * SAMPLE_RATE)
                if self.level <= 0:
                    self.level = 0
                    self.state = 'off'
            env[i] = self.level
        return env

# ===================== VOZ DO SINTETIZADOR =====================
class Voice:
    def __init__(self, freq):
        self.freq = freq
        self.phase = 0
        self.env = ADSR()
        self.env.trigger()

    def generate(self, n):
        t = (np.arange(n) + self.phase) / SAMPLE_RATE
        signal = np.zeros(n)

        for k in range(1, 33):  # 32 parciais (síntese aditiva)
            signal += (1 / k) * np.sin(2 * np.pi * self.freq * k * t)

        self.phase += n
        return signal * self.env.process(n)

# ===================== SINTETIZADOR =====================
class Synth:
    def __init__(self):
        self.voices = []
        self.cutoff = 2000  # Hz

    def note_on(self, note):
        if len(self.voices) < MAX_VOICES:
            self.voices.append(Voice(midi_to_freq(note)))

    def note_off(self):
        for v in self.voices:
            v.env.release()

    def process(self, n):
        mix = np.zeros(n)
        self.voices = [v for v in self.voices if v.env.state != 'off']

        for v in self.voices:
            mix += v.generate(n)

        # filtro passa-baixa (nunca zera)
        cutoff = max(200, min(self.cutoff, 8000))
        b, a = butter(2, cutoff / (SAMPLE_RATE / 2))
        return lfilter(b, a, mix)

# ===================== FFT ANALYZER =====================
class FFTAnalyzer:
    def analyze(self, signal):
        spectrum = np.abs(fft(signal))
        return spectrum[:len(spectrum)//2]

# ===================== INSTÂNCIAS =====================
synth = Synth()
fft_analyzer = FFTAnalyzer()

# ===================== MIDI =====================
def handle_midi(msg):
    if msg.type == 'note_on' and msg.velocity > 0:
        synth.note_on(msg.note)
    elif msg.type in ['note_off', 'note_on']:
        synth.note_off()
    elif msg.type == 'control_change':
        if msg.control == 74:  # cutoff
            synth.cutoff = 200 + msg.value * 60

def midi_thread():
    ports = mido.get_input_names()
    if ports:
        mido.open_input(ports[0], callback=handle_midi)
        print("MIDI conectado:", ports[0])

# ===================== AUDIO CALLBACK =====================
def audio_callback(outdata, frames, time, status):
    audio = synth.process(frames)
    outdata[:] = audio.reshape(-1, 1)

# ===================== GUI =====================
class GUI(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle('Sintetizador Completo – DSP + MIDI + GUI')

        layout = QVBoxLayout()

        self.label = QLabel('Cutoff')
        layout.addWidget(self.label)

        self.cutoff = QSlider(Qt.Horizontal)
        self.cutoff.setRange(1, 127)  # NUNCA zero
        self.cutoff.setValue(60)
        self.cutoff.valueChanged.connect(self.cutoff_change)
        layout.addWidget(self.cutoff)

        btn = QPushButton('Conectar MIDI')
        btn.clicked.connect(self.connect_midi)
        layout.addWidget(btn)

        self.setLayout(layout)

    def cutoff_change(self, v):
        synth.cutoff = 200 + v * 60

    def connect_midi(self):
        threading.Thread(target=midi_thread, daemon=True).start()

# ===================== MAIN =====================
if __name__ == '__main__':
    print("=== SINTETIZADOR INICIADO ===")

    stream = sd.OutputStream(
        channels=1,
        callback=audio_callback,
        samplerate=SAMPLE_RATE,
        blocksize=BUFFER_SIZE
    )
    stream.start()

    app = QApplication(sys.argv)
    gui = GUI()
    gui.show()

    sys.exit(app.exec())
