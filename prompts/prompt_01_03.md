# Engineering Context

Develop a reusable 2:1 multiplexer as part of the combinational RTL library used throughout this course. The module should serve as a reference implementation for future hierarchical designs and AI-assisted RTL development exercises.

---

# RTL Design Specification

## 1. Project

Project Name: mux_2to1_modified

Circuit Name: 2:1 Multiplexer

---

## 2. Circuit Description

Design a synthesizable combinational 2:1 multiplexer.

The circuit shall select one of two input signals based on the value of the select signal and drive the selected value to the output.

---

## 3. Interface

### Inputs

| Signal | Width | Description |
|---------|-------|-------------|
| in0 | 1 | Input 0 |
| in1 | 1 | Input 1 |
| sel | 1 | Select signal |

### Outputs

| Signal | Width | Description |
|---------|-------|-------------|
| out | 1 | Selected output |

---

## 4. Special Requirements

- Fixed-width implementation only.
- Do not parameterize the design.
- Implement purely combinational logic.
- Use continuous assignment.
- Do not infer latches.
- Use meaningful and consistent signal names.
- Keep the RTL simple, readable and suitable for beginners.
- Generate a self-checking testbench that verifies all possible input combinations.
- Ensure the generated design exactly matches this specification without introducing additional functionality.

--- End of 2:1 mux prompt ---
---

Review the generated RTL using the engineering checklist defined in design_checklist. md.

Produce a complete engineering review report with section-wise scores, an overall score out of 100, identified issues, recommended improvements, corrected RTL where required, and a final approval recommendation. do not change any of the codes, only change in the final output report.

Save the review report as a Markdown file in the project's report folder.

---
