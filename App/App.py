#!/usr/bin/env python3
# ============================================================
# SINTETIZADOR POLIFÔNICO - VERSÃO MELHORADA
# Comunicação MIDI → FPGA via UART com protocolo robusto
# Interface gráfica moderna com visualização FFT
# ============================================================

import sys
import numpy as np
import sounddevice as sd
import mido
import serial
import threading
import time
from collections import deque
from scipy.signal import butter, lfilter
from numpy.fft import fft

from PySide6.QtWidgets import (
    QApplication, QMainWindow, QWidget, QLabel, QSlider, 
    QPushButton, QVBoxLayout, QHBoxLayout, QGroupBox,
    QComboBox, QSpinBox, QStatusBar, QMessageBox, QTabWidget
)
from PySide6.QtCore import Qt, QTimer, Signal, QObject
from PySide6.QtGui import QPainter, QColor, QPen

# ===================== CONFIGURAÇÕES GLOBAIS =====================
SAMPLE_RATE = 44100
BUFFER_SIZE = 512
MAX_VOICES = 8

# ===================== PROTOCOLO UART =====================
class UARTProtocol:
    """
    Protocolo de comunicação FPGA-PC:
    
    Formato de pacote (4 bytes):
    [START_BYTE] [COMMAND] [DATA_H] [DATA_L]
    
    START_BYTE = 0xAA (sincronização)
    
    COMMAND bytes:
    0x01: NOTE_ON  → DATA = [note][velocity]
    0x02: NOTE_OFF → DATA = [note][0x00]
    0x10: SET_CUTOFF → DATA = [cutoff_h][cutoff_l] (12 bits, 0-4095)
    0x11: SET_RESONANCE → DATA = [Q_value][0x00] (8 bits)
    0x20: SET_ATTACK → DATA = [attack_h][attack_l] (16 bits, ms)
    0x21: SET_DECAY → DATA = [decay_h][decay_l]
    0x22: SET_SUSTAIN → DATA = [level][0x00] (8 bits, 0-255)
    0x23: SET_RELEASE → DATA = [release_h][release_l]
    0x30: SET_WAVEFORM → DATA = [wave_id][0x00]
    0xFE: PING → DATA = [0x00][0x00] (health check)
    0xFF: RESET → DATA = [0x00][0x00] (reset all voices)
    """
    
    START_BYTE = 0xAA
    
    CMD_NOTE_ON = 0x01
    CMD_NOTE_OFF = 0x02
    CMD_SET_CUTOFF = 0x10
    CMD_SET_RESONANCE = 0x11
    CMD_SET_ATTACK = 0x20
    CMD_SET_DECAY = 0x21
    CMD_SET_SUSTAIN = 0x22
    CMD_SET_RELEASE = 0x23
    CMD_SET_WAVEFORM = 0x30
    CMD_PING = 0xFE
    CMD_RESET = 0xFF
    
    @staticmethod
    def encode_packet(command, data_h, data_l):
        """Cria pacote de 4 bytes para envio UART"""
        return bytes([UARTProtocol.START_BYTE, command, data_h, data_l])
    
    @staticmethod
    def note_on(note, velocity=100):
        return UARTProtocol.encode_packet(
            UARTProtocol.CMD_NOTE_ON, 
            note & 0xFF, 
            velocity & 0xFF
        )
    
    @staticmethod
    def note_off(note):
        return UARTProtocol.encode_packet(
            UARTProtocol.CMD_NOTE_OFF, 
            note & 0xFF, 
            0x00
        )
    
    @staticmethod
    def set_cutoff(freq_hz):
        """Cutoff em Hz (200-8000) → 12 bits (0-4095)"""
        value = int(np.clip((freq_hz - 200) / (8000 - 200) * 4095, 0, 4095))
        return UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_CUTOFF,
            (value >> 8) & 0x0F,
            value & 0xFF
        )
    
    @staticmethod
    def set_resonance(q_value):
        """Q (0.5-10.0) → 8 bits (0-255)"""
        value = int(np.clip((q_value - 0.5) / (10.0 - 0.5) * 255, 0, 255))
        return UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_RESONANCE,
            value & 0xFF,
            0x00
        )
    
    @staticmethod
    def set_adsr(attack_ms, decay_ms, sustain_level, release_ms):
        """Retorna lista de 4 pacotes ADSR"""
        packets = []
        
        # Attack (0-2000ms) → 16 bits
        a = int(np.clip(attack_ms, 0, 2000))
        packets.append(UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_ATTACK,
            (a >> 8) & 0xFF,
            a & 0xFF
        ))
        
        # Decay
        d = int(np.clip(decay_ms, 0, 2000))
        packets.append(UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_DECAY,
            (d >> 8) & 0xFF,
            d & 0xFF
        ))
        
        # Sustain (0.0-1.0) → 8 bits
        s = int(np.clip(sustain_level * 255, 0, 255))
        packets.append(UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_SUSTAIN,
            s & 0xFF,
            0x00
        ))
        
        # Release
        r = int(np.clip(release_ms, 0, 5000))
        packets.append(UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_RELEASE,
            (r >> 8) & 0xFF,
            r & 0xFF
        ))
        
        return packets

# ===================== COMUNICAÇÃO SERIAL =====================
class SerialManager(QObject):
    """Gerencia conexão UART com a FPGA"""
    
    connection_changed = Signal(bool)
    data_received = Signal(bytes)
    
    def __init__(self):
        super().__init__()
        self.serial_port = None
        self.connected = False
        self.tx_queue = deque(maxlen=256)
        self.tx_thread = None
        self.running = False
        
    def connect(self, port, baudrate=115200):
        """Conecta à porta serial"""
        try:
            self.serial_port = serial.Serial(
                port=port,
                baudrate=baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=0.1
            )
            self.connected = True
            self.running = True
            
            # Thread para envio contínuo
            self.tx_thread = threading.Thread(target=self._tx_worker, daemon=True)
            self.tx_thread.start()
            
            self.connection_changed.emit(True)
            return True
            
        except Exception as e:
            print(f"Erro ao conectar: {e}")
            self.connected = False
            self.connection_changed.emit(False)
            return False
    
    def disconnect(self):
        """Desconecta da porta serial"""
        self.running = False
        if self.tx_thread:
            self.tx_thread.join(timeout=1.0)
        
        if self.serial_port and self.serial_port.is_open:
            self.serial_port.close()
        
        self.connected = False
        self.connection_changed.emit(False)
    
    def send_packet(self, packet):
        """Adiciona pacote à fila de transmissão"""
        if self.connected:
            self.tx_queue.append(packet)
    
    def _tx_worker(self):
        """Thread de transmissão contínua"""
        while self.running:
            if self.tx_queue and self.serial_port and self.serial_port.is_open:
                packet = self.tx_queue.popleft()
                try:
                    self.serial_port.write(packet)
                    self.serial_port.flush()
                except Exception as e:
                    print(f"Erro TX: {e}")
            time.sleep(0.001)  # 1ms delay

# ===================== SIMULADOR DSP (mantido para referência) =====================
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

class Voice:
    def __init__(self, freq):
        self.freq = freq
        self.phase = 0
        self.env = ADSR()
        self.env.trigger()

    def generate(self, n):
        t = (np.arange(n) + self.phase) / SAMPLE_RATE
        signal = np.zeros(n)
        for k in range(1, 33):
            signal += (1 / k) * np.sin(2 * np.pi * self.freq * k * t)
        self.phase += n
        return signal * self.env.process(n)

class Synth:
    def __init__(self):
        self.voices = []
        self.cutoff = 2000

    def note_on(self, note):
        if len(self.voices) < MAX_VOICES:
            freq = 440.0 * (2 ** ((note - 69) / 12))
            self.voices.append(Voice(freq))

    def note_off(self):
        for v in self.voices:
            v.env.release()

    def process(self, n):
        mix = np.zeros(n)
        self.voices = [v for v in self.voices if v.env.state != 'off']
        for v in self.voices:
            mix += v.generate(n)
        cutoff = max(200, min(self.cutoff, 8000))
        b, a = butter(2, cutoff / (SAMPLE_RATE / 2))
        return lfilter(b, a, mix)

synth = Synth()

def audio_callback(outdata, frames, time_info, status):
    audio = synth.process(frames)
    outdata[:] = audio.reshape(-1, 1)

# ===================== VISUALIZADOR FFT =====================
class FFTVisualizer(QWidget):
    def __init__(self):
        super().__init__()
        self.setMinimumHeight(200)
        self.spectrum = np.zeros(512)
        
    def update_spectrum(self, audio_data):
        """Atualiza espectro FFT"""
        if len(audio_data) > 0:
            spectrum = np.abs(fft(audio_data))
            self.spectrum = spectrum[:512]
            self.update()
    
    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        
        # Fundo
        painter.fillRect(self.rect(), QColor(20, 20, 30))
        
        # Grid
        painter.setPen(QPen(QColor(50, 50, 70), 1))
        for i in range(5):
            y = int(self.height() * i / 4)
            painter.drawLine(0, y, self.width(), y)
        
        # Espectro
        painter.setPen(QPen(QColor(0, 200, 255), 2))
        
        width = self.width()
        height = self.height()
        
        max_val = np.max(self.spectrum) if np.max(self.spectrum) > 0 else 1
        
        for i in range(len(self.spectrum) - 1):
            x1 = int(i * width / len(self.spectrum))
            x2 = int((i + 1) * width / len(self.spectrum))
            
            y1 = height - int((self.spectrum[i] / max_val) * height * 0.9)
            y2 = height - int((self.spectrum[i + 1] / max_val) * height * 0.9)
            
            painter.drawLine(x1, y1, x2, y2)

# ===================== INTERFACE GRÁFICA =====================
class SynthGUI(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle('Sintetizador FPGA - Controle e Monitoramento')
        self.setMinimumSize(900, 700)
        
        self.serial_mgr = SerialManager()
        self.serial_mgr.connection_changed.connect(self.on_connection_changed)
        
        self.midi_input = None
        self.midi_thread = None
        
        self.init_ui()
        
        # Timer para atualização FFT
        self.fft_timer = QTimer()
        self.fft_timer.timeout.connect(self.update_fft)
        self.fft_timer.start(50)  # 20 FPS
        
    def init_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        
        # Tabs
        tabs = QTabWidget()
        layout.addWidget(tabs)
        
        # Tab 1: Conexão
        conn_tab = self.create_connection_tab()
        tabs.addTab(conn_tab, "Conexão")
        
        # Tab 2: Síntese
        synth_tab = self.create_synth_tab()
        tabs.addTab(synth_tab, "Síntese")
        
        # Tab 3: Filtro
        filter_tab = self.create_filter_tab()
        tabs.addTab(filter_tab, "Filtro")
        
        # Tab 4: Envelope
        env_tab = self.create_envelope_tab()
        tabs.addTab(env_tab, "Envelope ADSR")
        
        # Visualizador FFT
        fft_group = QGroupBox("Analisador de Espectro")
        fft_layout = QVBoxLayout()
        self.fft_viz = FFTVisualizer()
        fft_layout.addWidget(self.fft_viz)
        fft_group.setLayout(fft_layout)
        layout.addWidget(fft_group)
        
        # Status bar
        self.status_bar = QStatusBar()
        self.setStatusBar(self.status_bar)
        self.status_bar.showMessage("Desconectado")
    
    def create_connection_tab(self):
        widget = QWidget()
        layout = QVBoxLayout(widget)
        
        # Conexão Serial
        serial_group = QGroupBox("Conexão Serial (FPGA)")
        serial_layout = QVBoxLayout()
        
        port_layout = QHBoxLayout()
        port_layout.addWidget(QLabel("Porta:"))
        self.port_combo = QComboBox()
        self.port_combo.addItems(["/dev/ttyUSB0", "/dev/ttyUSB1", "COM3", "COM4"])
        self.port_combo.setEditable(True)
        port_layout.addWidget(self.port_combo)
        serial_layout.addLayout(port_layout)
        
        self.connect_btn = QPushButton("Conectar FPGA")
        self.connect_btn.clicked.connect(self.toggle_serial_connection)
        serial_layout.addWidget(self.connect_btn)
        
        serial_group.setLayout(serial_layout)
        layout.addWidget(serial_group)
        
        # Conexão MIDI
        midi_group = QGroupBox("Conexão MIDI")
        midi_layout = QVBoxLayout()
        
        self.midi_combo = QComboBox()
        self.refresh_midi_btn = QPushButton("Atualizar Portas MIDI")
        self.refresh_midi_btn.clicked.connect(self.refresh_midi_ports)
        midi_layout.addWidget(self.midi_combo)
        midi_layout.addWidget(self.refresh_midi_btn)
        
        self.midi_connect_btn = QPushButton("Conectar MIDI")
        self.midi_connect_btn.clicked.connect(self.toggle_midi_connection)
        midi_layout.addWidget(self.midi_connect_btn)
        
        midi_group.setLayout(midi_layout)
        layout.addWidget(midi_group)
        
        layout.addStretch()
        
        self.refresh_midi_ports()
        
        return widget
    
    def create_synth_tab(self):
        widget = QWidget()
        layout = QVBoxLayout(widget)
        
        # Seleção de forma de onda
        wave_group = QGroupBox("Forma de Onda (Síntese Aditiva)")
        wave_layout = QVBoxLayout()
        
        self.wave_combo = QComboBox()
        self.wave_combo.addItems([
            "Sine (Fundamental)",
            "Sawtooth (Todas harmônicas)",
            "Square (Harmônicas ímpares)",
            "Triangle (Harmônicas ímpares decrescentes)"
        ])
        self.wave_combo.currentIndexChanged.connect(self.on_waveform_changed)
        wave_layout.addWidget(self.wave_combo)
        
        wave_group.setLayout(wave_layout)
        layout.addWidget(wave_group)
        
        # Controle de polifonia
        poly_group = QGroupBox("Polifonia")
        poly_layout = QHBoxLayout()
        poly_layout.addWidget(QLabel("Vozes ativas:"))
        self.voice_count_label = QLabel("0/8")
        poly_layout.addWidget(self.voice_count_label)
        poly_layout.addStretch()
        poly_group.setLayout(poly_layout)
        layout.addWidget(poly_group)
        
        layout.addStretch()
        
        return widget
    
    def create_filter_tab(self):
        widget = QWidget()
        layout = QVBoxLayout(widget)
        
        # Cutoff
        cutoff_group = QGroupBox("Frequência de Corte")
        cutoff_layout = QVBoxLayout()
        
        self.cutoff_label = QLabel("2000 Hz")
        cutoff_layout.addWidget(self.cutoff_label)
        
        self.cutoff_slider = QSlider(Qt.Horizontal)
        self.cutoff_slider.setRange(200, 8000)
        self.cutoff_slider.setValue(2000)
        self.cutoff_slider.valueChanged.connect(self.on_cutoff_changed)
        cutoff_layout.addWidget(self.cutoff_slider)
        
        cutoff_group.setLayout(cutoff_layout)
        layout.addWidget(cutoff_group)
        
        # Resonance
        res_group = QGroupBox("Ressonância (Q)")
        res_layout = QVBoxLayout()
        
        self.res_label = QLabel("0.7")
        res_layout.addWidget(self.res_label)
        
        self.res_slider = QSlider(Qt.Horizontal)
        self.res_slider.setRange(5, 100)  # 0.5 a 10.0
        self.res_slider.setValue(7)
        self.res_slider.valueChanged.connect(self.on_resonance_changed)
        res_layout.addWidget(self.res_slider)
        
        res_group.setLayout(res_layout)
        layout.addWidget(res_group)
        
        layout.addStretch()
        
        return widget
    
    def create_envelope_tab(self):
        widget = QWidget()
        layout = QVBoxLayout(widget)
        
        # Attack
        a_group = QGroupBox("Attack (ms)")
        a_layout = QVBoxLayout()
        self.attack_spin = QSpinBox()
        self.attack_spin.setRange(1, 2000)
        self.attack_spin.setValue(10)
        self.attack_spin.valueChanged.connect(self.on_adsr_changed)
        a_layout.addWidget(self.attack_spin)
        a_group.setLayout(a_layout)
        layout.addWidget(a_group)
        
        # Decay
        d_group = QGroupBox("Decay (ms)")
        d_layout = QVBoxLayout()
        self.decay_spin = QSpinBox()
        self.decay_spin.setRange(1, 2000)
        self.decay_spin.setValue(100)
        self.decay_spin.valueChanged.connect(self.on_adsr_changed)
        d_layout.addWidget(self.decay_spin)
        d_group.setLayout(d_layout)
        layout.addWidget(d_group)
        
        # Sustain
        s_group = QGroupBox("Sustain (0.0-1.0)")
        s_layout = QVBoxLayout()
        self.sustain_slider = QSlider(Qt.Horizontal)
        self.sustain_slider.setRange(0, 100)
        self.sustain_slider.setValue(70)
        self.sustain_slider.valueChanged.connect(self.on_adsr_changed)
        s_layout.addWidget(self.sustain_slider)
        self.sustain_label = QLabel("0.70")
        s_layout.addWidget(self.sustain_label)
        s_group.setLayout(s_layout)
        layout.addWidget(s_group)
        
        # Release
        r_group = QGroupBox("Release (ms)")
        r_layout = QVBoxLayout()
        self.release_spin = QSpinBox()
        self.release_spin.setRange(1, 5000)
        self.release_spin.setValue(200)
        self.release_spin.valueChanged.connect(self.on_adsr_changed)
        r_layout.addWidget(self.release_spin)
        r_group.setLayout(r_layout)
        layout.addWidget(r_group)
        
        layout.addStretch()
        
        return widget
    
    # ===== CALLBACKS =====
    
    def toggle_serial_connection(self):
        if not self.serial_mgr.connected:
            port = self.port_combo.currentText()
            if self.serial_mgr.connect(port):
                self.status_bar.showMessage(f"Conectado: {port}")
                self.connect_btn.setText("Desconectar")
        else:
            self.serial_mgr.disconnect()
            self.connect_btn.setText("Conectar FPGA")
    
    def on_connection_changed(self, connected):
        if not connected:
            self.status_bar.showMessage("Desconectado")
    
    def refresh_midi_ports(self):
        self.midi_combo.clear()
        ports = mido.get_input_names()
        if ports:
            self.midi_combo.addItems(ports)
        else:
            self.midi_combo.addItem("Nenhum dispositivo MIDI")
    
    def toggle_midi_connection(self):
        if self.midi_input is None:
            port_name = self.midi_combo.currentText()
            if port_name != "Nenhum dispositivo MIDI":
                try:
                    self.midi_input = mido.open_input(port_name, callback=self.handle_midi)
                    self.midi_connect_btn.setText("Desconectar MIDI")
                    self.status_bar.showMessage(f"MIDI: {port_name}")
                except Exception as e:
                    QMessageBox.warning(self, "Erro", f"Falha ao conectar MIDI: {e}")
        else:
            self.midi_input.close()
            self.midi_input = None
            self.midi_connect_btn.setText("Conectar MIDI")
    
    def handle_midi(self, msg):
        """Processa mensagens MIDI e envia para FPGA"""
        if msg.type == 'note_on' and msg.velocity > 0:
            packet = UARTProtocol.note_on(msg.note, msg.velocity)
            self.serial_mgr.send_packet(packet)
            synth.note_on(msg.note)
            
        elif msg.type in ['note_off', 'note_on']:
            packet = UARTProtocol.note_off(msg.note)
            self.serial_mgr.send_packet(packet)
            synth.note_off()
        
        elif msg.type == 'control_change':
            if msg.control == 74:  # Cutoff
                freq = 200 + msg.value * 60
                self.cutoff_slider.setValue(freq)
    
    def on_cutoff_changed(self, value):
        self.cutoff_label.setText(f"{value} Hz")
        synth.cutoff = value
        packet = UARTProtocol.set_cutoff(value)
        self.serial_mgr.send_packet(packet)
    
    def on_resonance_changed(self, value):
        q = value / 10.0
        self.res_label.setText(f"{q:.1f}")
        packet = UARTProtocol.set_resonance(q)
        self.serial_mgr.send_packet(packet)
    
    def on_adsr_changed(self):
        attack = self.attack_spin.value()
        decay = self.decay_spin.value()
        sustain = self.sustain_slider.value() / 100.0
        release = self.release_spin.value()
        
        self.sustain_label.setText(f"{sustain:.2f}")
        
        packets = UARTProtocol.set_adsr(attack, decay, sustain, release)
        for packet in packets:
            self.serial_mgr.send_packet(packet)
    
    def on_waveform_changed(self, index):
        packet = UARTProtocol.encode_packet(
            UARTProtocol.CMD_SET_WAVEFORM,
            index & 0xFF,
            0x00
        )
        self.serial_mgr.send_packet(packet)
    
    def update_fft(self):
        """Atualiza visualização FFT"""
        # Aqui você capturaria áudio da FPGA
        # Por ora, usa simulação local
        if len(synth.voices) > 0:
            audio = synth.process(512)
            self.fft_viz.update_spectrum(audio)
            self.voice_count_label.setText(f"{len(synth.voices)}/{MAX_VOICES}")

# ===================== MAIN =====================
if __name__ == '__main__':
    print("=== SINTETIZADOR FPGA ===")
    
    # Inicia áudio local (simulação)
    stream = sd.OutputStream(
        channels=1,
        callback=audio_callback,
        samplerate=SAMPLE_RATE,
        blocksize=BUFFER_SIZE
    )
    stream.start()
    
    app = QApplication(sys.argv)
    gui = SynthGUI()
    gui.show()
    
    sys.exit(app.exec())