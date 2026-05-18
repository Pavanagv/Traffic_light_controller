# 🚦 Traffic Light Controller — Verilog RTL

A **Traffic Light Controller** implemented in **Verilog HDL** using Finite State Machine (FSM) design. Fully simulated without hardware using Icarus Verilog and GTKWave.

---

## 📌 Overview

The controller cycles through three signal states:

| State | Light | Duration |
|-------|-------|----------|
| S0 | 🔴 RED | 6 clock cycles |
| S1 | 🟢 GREEN | 6 clock cycles |
| S2 | 🟡 YELLOW | 2 clock cycles |

Designed using **FSM methodology** with counter-based transitions in **Verilog RTL**.

---

## 🔄 State Diagram

```
  ┌──────────────────────────────────┐
  ▼                                  │
RED ──► GREEN ──► YELLOW ────────────┘
```

---

## ✨ Features

- FSM-based digital system design
- Sequential logic with counter-driven state transitions
- Fully RTL simulated — no FPGA or hardware required
- Waveform verification using GTKWave

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Verilog HDL | RTL design language |
| Icarus Verilog | Simulation / compilation |
| GTKWave | Waveform viewer |
| VS Code | Code editor |
| Linux | Development environment |

---

## 📁 Project Structure

```
Traffic_Light_Controller/
│
├── rtl/
│   └── traffic_light.v        # FSM design (top module)
│
├── tb/
│   └── tb_traffic_light.v     # Testbench
│
├── sim/
│   └── dump.vcd               # Simulation waveform output
│
└── README.md
```

---

## 🚀 How to Run

### 1. Compile
```bash
iverilog -o traffic rtl/traffic_light.v tb/tb_traffic_light.v
```

### 2. Simulate
```bash
vvp traffic
```

### 3. View Waveform
```bash
gtkwave sim/dump.vcd
```

---

## 📊 Expected Output

The waveform shows the light cycling in sequence:

```
RED ON → GREEN ON → YELLOW ON → RED ON → ...
```

Each transition is verified through waveform analysis in GTKWave.

---

## 🧾 Learning Outcomes

- FSM design and implementation in Verilog
- RTL coding best practices
- Sequential digital circuit design
- Simulation, debugging, and testbench writing
- Waveform analysis using GTKWave

---

## 🔮 Future Enhancements

- [ ] 4-way intersection traffic control
- [ ] Pedestrian crossing signal
- [ ] Sensor-based smart traffic logic
- [ ] FPGA hardware implementation
- [ ] Embedded real-time integration

---

## 👨‍💻 Author

**PAVANA KUMAR G V**
📍 Bengaluru, Karnataka
📧 [pavngv1234@gmail.com](mailto:pavngv1234@gmail.com)
🔗 [GitHub](https://github.com/Pavanagv) · [LinkedIn](https://linkedin.com/in/pavan-kumar-g-v-327313296)
