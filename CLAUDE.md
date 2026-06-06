# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

An FPGA polyphonic synthesizer + HDMI video project for the **Alinx AUBoard 15P** (Artix UltraScale+ part `xcau15p-ffvb676-2-e`), built with **AMD/Xilinx Vivado + Vitis 2025.2**, plus a PySide6 desktop GUI that drives it. Most comments, docs, and commit messages are in Portuguese.

The system: a PC GUI (`App/`) reads a MIDI keyboard (Akai MPK mini) and streams a custom UART packet protocol to the FPGA; the FPGA drives an HDMI TX video pipeline (and, in the planned full design, synthesizes audio from the decoded packets).

## Repository layout — single Vivado project

`FPGA_PDS/` is the **one and only** Vivado/Vitis project. (Two earlier hand-written-HDL iterations, `fft_fpga/` and `fft_fpga_20251/`, were dead ends and have been removed from the repo — they are still recoverable from git history if needed.)

- **`FPGA_PDS/`** — block-design based (`hdmi_tx_bd`, in `FPGA_PDS.srcs/sources_1/bd/`) with a **MicroBlaze** softcore + HDMI **RX and TX** subsystems. The MicroBlaze is out of reset. Current work (branch `passthrough`) is **HDMI RX→TX passthrough**: the BD has both `v_hdmi_rx_ss_0` and `v_hdmi_tx_ss_0`, with the datapath `RX VIDEO_OUT → axis_register_slice → v_tpg (re-timer) → TX VIDEO_IN`. The `colorbars` branch / git history holds the earlier TX-only colorbar design. `FPGA_PDS/auboard_hdmi_pass_thru_2023p1/` holds the Alinx HDMI Pass-Thru reference design the firmware is adapted from.
- **`App/`** — PySide6 desktop GUI (MIDI → UART driver).
- **`datasheets/`** — board/IC reference docs.

This project is currently **HDMI/MicroBlaze only**: it has no hand-written `sources_1/new/` audio RTL. The UART synth engine (`uart_rx.sv`, `packet_decoder.sv`, `dds_oscillator.sv`) and the raw TMDS/HDMI pipeline lived in the deleted `fft_fpga_20251/` project; consult git history if that RTL is needed again.

### Generated content IS committed
Despite comments in `.gitignore`, only logs (`*.log`, `*.jou`) are ignored — the `.cache/`, `.gen/`, `.runs/`, `.hw/`, `.sim/`, `.ip_user_files/` directories are tracked. **Edit IP/block-design config through the Vivado GUI, never the generated files by hand** (`*_sim_netlist.*`, `*_stub.*`, `.xci`, `.bd`, `*_wrapper.v`); a hand edit desyncs the parameters Vivado derives from it. The authoritative hand-written sources are only `*.srcs/sources_1/new/` (RTL) and `*.srcs/constrs_1/new/` (constraints — e.g. `FPGA_PDS/FPGA_PDS.srcs/constrs_1/new/constraints.xdc`).

## The UART protocol (PC side)

The PC↔FPGA wire format is defined on the **PC side** in `App/App.py`, class `UARTProtocol`. 4-byte packets at **115200 baud**: `[0xAA START][COMMAND][DATA_H][DATA_L]`. Commands include `0x01 NOTE_ON`, `0x02 NOTE_OFF`, `0x10 SET_CUTOFF`, `0x11 SET_RESONANCE`, `0x20–0x23` ADSR, `0x30 SET_WAVEFORM`, `0xFE PING`, `0xFF RESET`.

The matching **FPGA-side decoder** (`packet_decoder.sv` + `uart_rx.sv`) was part of the removed `fft_fpga_20251/` project and is **not present in the current design**. If/when the audio engine is reintegrated into `FPGA_PDS`, keep both sides in sync.

## MicroBlaze firmware (FPGA_PDS only)

- **`FPGA_PDS/app_component/src/main.c`** — the bare-metal app: an interrupt-driven **HDMI RX→TX passthrough** bring-up adapted from the AUBoard HDMI Pass-Thru reference. Almost all work happens in interrupt callbacks: RX cable HPD → enable RX refclk → RX GT refclk / MMCM init → RX stream up (copy RX stream to TX, set TX refclk = recovered RX refclk) → `StartTxAfterRx` starts TX, enables RX clock forwarding, and programs the 8T49N241 `LOCKED` to lock the TX clock to the recovered RX clock. The `v_tpg` runs in passthrough/re-timer mode (`IsPassThrough`/`enableInput=TRUE`) to regenerate clean timing so the TX AXIS→video bridge locks; a bare register slice straight into TX did not. With `IsPassThrough=FALSE` the same TPG instead **generates color bars** (drop-in fallback). Uses SDT base-address APIs (no `DEVICE_ID` macros). HDMI EDID is cloned from the TX sink to the RX (`hdmi_edid.c`, `Edid[256]`); no HDCP or audio. `stdout` is the **MDM JTAG-UART** (view in the Vitis "JTAG UART" terminal), not the PC↔FPGA UART. See [[hdmi-rx-passthrough-bd]].
- **`FPGA_PDS/app_component/src/idt_8t49n24x.c` / `.h`** — driver for the **8T49N241** I2C clock generator (Xilinx `IDT_8T49N24x_*` API). The firmware reprograms it to each video mode's TMDS clock to feed the GT reference clock. Chip is at **I2C addr `0x7C`** (`IDT_ADDR`), held in reset via an AXI GPIO pulsed low→high at startup. The 8T49N241 free-runs ~297 MHz; see [[hdmi-clockgen-8t49n241-bringup]].
- Key base-address/IRQ wiring is `#define`d at the top of `main.c` (IIC, RST GPIO, INTC, HDMI TX SS, HDMI RX SS, VPHY, TPG). axi_intc inputs: `HDMI_TX_SS=0`, `IIC=1`, `VID_PHY=2`, `HDMI_RX_SS=3`. GT TX refclk = `MGTREFCLK0` from the 8T49N241 (`C_TX_REFCLK_SEL=0`); GT RX refclk = `MGTREFCLK1`, the recovered clock (`C_RX_REFCLK_SEL=1`). The BD requires the TPG with `SAMPLES_PER_CLOCK=2` + `HAS_AXI4S_SLAVE=1`.
- Built as a Vitis component (`app_component/vitis-comp.json`, `app.yaml`, `CMakeLists.txt`, `lscript.ld`) against **`FPGA_PDS/platform/`** (exported hardware `.xsa` + standalone BSP for `microblaze_0`).
- `app.yaml` references Windows paths (`C:\AMDDesignTools\...`); the project was authored on Windows. Adjust paths if building elsewhere.

## Build & run

These are GUI/IDE-driven flows with batch helper scripts (in `FPGA_PDS/`); there are no Makefiles or CI. Run the Tcl scripts from the repo root (paths are relative to it).

- **FPGA bitstream:** open `FPGA_PDS/FPGA_PDS.xpr` in Vivado and run synthesis → implementation → generate bitstream. Or batch: `vivado -mode batch -source FPGA_PDS/build_hdmi_hw.tcl` — re-runs `impl_1` to `write_bitstream` and re-exports the `.xsa` into `FPGA_PDS/platform/hw/`. `FPGA_PDS/fix_hdmi_bd.tcl` programmatically (re)wires the BD passthrough interface connections.
- **MicroBlaze firmware:** build the `app_component` component in Vitis against `platform`, or batch via `python FPGA_PDS/rebuild_vitis.py` (updates the platform from the `.xsa`, then builds the app). Program the board with `xsdb FPGA_PDS/run_hdmi_xsdb.tcl` (downloads the bitstream then the ELF). Watch `xil_printf` output in the Vitis JTAG UART terminal.
- **Desktop GUI:** the entry point is `App/App.py`. Run via `App/run.sh`, which activates a local `.venv` and forces PySide6's bundled Qt libs onto `LD_LIBRARY_PATH` (works around system Qt conflicts on Linux Mint). First-time setup: create `.venv` and `pip install -r App/requirements.txt`. `App/Codigo MPK mini.py` is a standalone pyqtgraph FFT/MIDI experiment; `App/generate_sine.py` emits a `sine_lut.mem` LUT for the DDS.

## Datasheets

`datasheets/` holds board/IC reference docs (AUBoard 15P, clock chip, etc.) — consult when touching pin constraints or the HDMI/clock-config logic.
