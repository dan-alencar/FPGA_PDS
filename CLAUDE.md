# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

An FPGA polyphonic synthesizer + HDMI video project for the **Alinx AUBoard 15P** (Artix UltraScale+ part `xcau15p-ffvb676-2-e`), built with **AMD/Xilinx Vivado + Vitis 2025.2**, plus a PySide6 desktop GUI that drives it. Most comments, docs, and commit messages are in Portuguese.

The system: a PC GUI (`App/`) reads a MIDI keyboard (Akai MPK mini) and streams a custom UART packet protocol to the FPGA; the FPGA decodes packets and synthesizes audio, and also drives an HDMI TX video pipeline.

## Repository layout — three parallel Vivado projects

There is **no single source tree**. The repo contains three full Vivado project copies that are snapshots/iterations of the same design:

- **`FPGA_PDS/`** — the current/active project (most recent commits touch it). Block-design based (`hdmi_tx_bd`) with a **MicroBlaze** softcore + HDMI TX subsystem. Recent work centers on bringing the MicroBlaze out of reset and sizing BRAM.
- **`fft_fpga_20251/`** — the prior, most complete **hand-written HDL** design (UART synth engine + TMDS/HDMI pipeline). Look here for the readable RTL.
- **`fft_fpga/`** — an older iteration; generally ignore unless asked.

When making RTL changes, confirm which project the user means; default to `FPGA_PDS/` for block-design/MicroBlaze work and `fft_fpga_20251/` for raw SystemVerilog.

### Generated content IS committed
Despite comments in `.gitignore`, only logs (`*.log`, `*.jou`) are ignored — the `.cache/`, `.gen/`, `.runs/`, `.hw/`, `.sim/`, `.ip_user_files/` directories are tracked. **Edit IP/block-design config through the Vivado GUI, never the generated files by hand** (`*_sim_netlist.*`, `*_stub.*`, `.xci`, `.bd`, `*_wrapper.v`); a hand edit desyncs the parameters Vivado derives from it. The authoritative hand-written sources are only `*.srcs/sources_1/new/` (RTL) and `*.srcs/constrs_1/new/` (constraints).

## Hand-written RTL (in `fft_fpga_20251/.../sources_1/new/`)

Audio path (top: `fpga_top.sv`):
- `clk_wiz_0` IP turns the 300 MHz differential board clock into 100 MHz `clk_sys`; `rst = ~SYS_RST_N || ~locked`. **All timing constants are tuned for 100 MHz** (e.g. audio 44.1 kHz strobe `audio_tick_cnt >= 2267`, UART `CLK_FREQ=100000000`).
- `uart_rx.sv` → `packet_decoder.sv` → `dds_oscillator.sv` (DDS audio sample out).

Video path: `video_pipeline_top.sv`, `video_timing_gen.sv`, `video_pattern_gen.sv`, `tmds_encoder*.sv`, `tmds_packer_4px.sv`, `hdmi_phy_wrapper.sv`, `phy_axilite_init.sv`. HDMI uses 3 GTH channels for TMDS data + an LVDS TMDS clock; an 8T49N241 clock chip is configured over I2C for the GT reference clock. Pin/clock assignments are in `constrs_1/new/constraints.xdc`.

## The UART protocol (shared contract — keep both sides in sync)

The PC↔FPGA wire format is defined in two places that must agree:
- **PC side:** `App/App.py`, class `UARTProtocol`.
- **FPGA side:** `packet_decoder.sv` (+ `uart_rx.sv`).

4-byte packets at **115200 baud**: `[0xAA START][COMMAND][DATA_H][DATA_L]`. Commands include `0x01 NOTE_ON`, `0x02 NOTE_OFF`, `0x10 SET_CUTOFF`, `0x11 SET_RESONANCE`, `0x20–0x23` ADSR, `0x30 SET_WAVEFORM`, `0xFE PING`, `0xFF RESET`. If you change opcodes/format, update both files.

## MicroBlaze firmware (FPGA_PDS only)

- **`FPGA_PDS/app_component1/src/main.c`** — the bare-metal app (currently a minimal "MB alive" heartbeat over `xil_printf`). Built as a Vitis component (`vitis-comp.json`, `app.yaml`, `CMakeLists.txt`, `lscript.ld`).
- **`FPGA_PDS/platform1/`** — the exported hardware platform + standalone BSP the app links against.
- `app.yaml` references Windows paths (`C:\AMDDesignTools\...`); the project was authored on Windows. Adjust paths if building elsewhere.

## Build & run

These are GUI/IDE-driven flows; there are no Makefiles or CI.

- **FPGA bitstream:** open the relevant `*.xpr` in Vivado and run synthesis → implementation → generate bitstream. No batch Tcl flow is checked in.
- **MicroBlaze firmware:** build the `app_component1` component in Vitis against `platform1`.
- **Desktop GUI:** the entry point is `App/App.py`. Run via `App/run.sh`, which activates a local `.venv` and forces PySide6's bundled Qt libs onto `LD_LIBRARY_PATH` (works around system Qt conflicts on Linux Mint). First-time setup: create `.venv` and `pip install -r App/requirements.txt`. `App/Codigo MPK mini.py` is a standalone pyqtgraph FFT/MIDI experiment; `App/generate_sine.py` emits a `sine_lut.mem` LUT for the DDS.

## Datasheets

`datasheets/` holds board/IC reference docs (AUBoard 15P, clock chip, etc.) — consult when touching pin constraints or the HDMI/clock-config logic.
