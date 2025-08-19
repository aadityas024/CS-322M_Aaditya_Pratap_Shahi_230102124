# Serial Pattern Detector (Mealy FSM) — Detect `1101` with Overlap

## Goal
Design and verify a Mealy Finite State Machine (FSM) that detects the serial bit pattern `1101` on input `din` with overlap support.  
The output `y` generates a **1-cycle pulse** when the complete sequence is detected.

- **FSM Type**: Mealy  
- **Reset**: Synchronous, active-high  

---

## State Diagram
- Each state represents the progress through the target pattern `1101`.  
- State transitions handle overlapping sequences (e.g., `1101101` triggers two detections).  
- Output `y=1` is asserted only when the complete pattern `1101` is detected.  

![State Diagram](https://github.com/aadityas024/CS-322M_Aaditya_Pratap_Shahi_230102124/blob/main/fsm-assignments/problem1_seqdet/state_dig.jpeg)
![Block Design](https://github.com/aadityas024/CS-322M_Aaditya_Pratap_Shahi_230102124/blob/main/fsm-assignments/problem1_seqdet/block_dig.jpeg)

---

## Waveform
The testbench generates serial input streams on `din`.  
- `y` pulses high for **1 clock cycle** whenever the pattern `1101` is detected.  
- Overlapping sequences are supported: e.g., input `1101101` produces **two detection pulses**.  

![Waveform](https://github.com/aadityas024/CS-322M_Aaditya_Pratap_Shahi_230102124/blob/main/fsm-assignments/problem1_seqdet/wave.jpeg)

## How to Run (Vivado)

1. Open Vivado and create a new project.

2. Add the source files:
   - `seq_detect_mealy.v`  
   - `tb_seq_detect_mealy.v`
3. Set the simulation top module to `tb_seq_detect_mealy`.
4. Run **Behavioral Simulation**.
5. Open the **waveform viewer** to verify detection pulses.

---

## Expected Behavior
| Input Stream (`din`) | Detection Pulses (`y`) |
|-----------------------|-------------------------|
| `1101`               | Pulse at the last bit   |
| `1101101`            | Two pulses (overlap)    |
| `11101`              | Pulse when last `1` arrives |
| `01101101`           | Two pulses              |

---

## GitHub Submission
- **Repository URL**: *[(https://github.com/spandanb10745/CS322M-230102108)]*  
- **Final Commit Hash**: *[replace with latest commit hash]*  

---

## Author
- **Name**: *SPANDAN BHARADWAJ*  
- **Course/Assignment**: *CS_322_M*  



