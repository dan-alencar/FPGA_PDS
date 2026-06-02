# FPGA_PDS — Sintetizador + HDMI na Alinx AUBoard 15P

Projeto de sintetizador polifônico + vídeo HDMI para a placa **Alinx AUBoard 15P**
(Artix UltraScale+ `xcau15p-ffvb676-2-e`), feito com **AMD/Xilinx Vivado + Vitis 2025.2**,
acompanhado de uma GUI desktop em PySide6 que lê um teclado MIDI (Akai MPK mini) e envia
comandos para a FPGA por um protocolo UART próprio.

## Estrutura do repositório

- **`FPGA_PDS/`** — projeto Vivado/Vitis (block design `hdmi_tx_bd` + softcore MicroBlaze
  + subsistema HDMI TX). Inclui o firmware bare-metal em `FPGA_PDS/app_component/` e a
  plataforma exportada em `FPGA_PDS/platform/`.
- **`App/`** — GUI desktop (MIDI → UART). Rode com `App/run.sh`.
- **`datasheets/`** — documentação de referência da placa e dos ICs.

> Iterações antigas em HDL escrito à mão (`fft_fpga/`, `fft_fpga_20251/`) foram removidas
> por não funcionarem; continuam recuperáveis pelo histórico do git.

Veja `CLAUDE.md` para detalhes de arquitetura, build e do protocolo UART.

## Efeitos (knobs do MPK mini)

- Knob 1: Volume Master.
- Knob 2: Overdrive (Saturação analógica quente).
- Knob 3: Attack (Aumente para transformar o som em um "Pad" suave).
- Knob 4: Vibrato (Oscilação de afinação para som mais expressivo).
- Knob 5: Cutoff (Filtro Passa-Baixas. Gire para a esquerda para abafar o som).
- Knob 6: Ressonância (Aumenta o brilho no ponto de corte do filtro).
- Knob 7: Bitcrusher (Efeito Lo-Fi agressivo, tipo 8-bits).
- Knob 8: Tremolo (Oscilação rítmica do volume).
