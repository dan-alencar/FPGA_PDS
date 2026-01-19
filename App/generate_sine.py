import math

# Configurações
SAMPLES = 1024
AMPLITUDE = 32767 # Max para signed 16-bit
FILENAME = "sine_lut.mem"

with open(FILENAME, 'w') as f:
    for i in range(SAMPLES):
        # 2 * pi * i / SAMPLES
        angle = (2.0 * math.pi * i) / SAMPLES
        value = int(math.sin(angle) * AMPLITUDE)
        
        # Converte para Hexadecimal de 16 bits (complemento de dois)
        if value < 0:
            value = (1 << 16) + value
            
        f.write(f"{value:04X}\n")

print(f"Arquivo {FILENAME} gerado com sucesso!")