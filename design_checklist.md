# RTL Engineering Review Checklist

## Review Policy

The objective of this review is to verify that the RTL satisfies the engineering specification while maintaining good engineering quality.

During the review:

1. Review only against the engineering specification and this checklist.
2. Do not recommend cosmetic changes.
3. Do not recommend personal coding preferences.
4. Do not rename modules, ports, signals or parameters unless they create a real engineering issue or violate the specification.
5. Do not replace one correct implementation with another equivalent implementation.
6. Do not introduce additional features or parameterization unless explicitly required.
7. Do not reduce the score because an alternative implementation exists.
8. Accept any implementation that satisfies the engineering specification.
9. Recommend changes only when they improve:
* Functional correctness
* Specification compliance
* Readability
* Maintainability
* Synthesizability
10. If no meaningful improvement exists, explicitly state that no changes are recommended.
11. Prefer stability over unnecessary optimization.

---

# RTL Engineering Review Checklist

## 1. Specification Review

- [ ] Circuit functionality matches the specification.
- [ ] No additional features have been introduced.
- [ ] No required features are missing.
- [ ] Inputs and outputs match the specification.

---

## 2. Module Interface Review

- [ ] Module name follows the required naming convention.
- [ ] Port names are meaningful and consistent.
- [ ] Port directions are correct.
- [ ] Signal widths are correct.
- [ ] Signal data types are appropriate.
- [ ] Parameters are used only when explicitly required.

---

## 3. RTL Design Review

- [ ] RTL correctly implements the required functionality.
- [ ] Logic is easy to understand.
- [ ] No redundant logic is present.
- [ ] No unnecessary parameterization is used.
- [ ] Design is suitable for future integration.

---

## 4. Coding Quality Review

- [ ] Naming conventions are followed.
- [ ] Code formatting is consistent.
- [ ] Comments are clear and useful.
- [ ] Unused signals or code have been removed.
- [ ] Magic numbers are avoided where possible.

---

## 5. Synthesizability Review

- [ ] RTL is synthesizable.
- [ ] No simulation-only constructs are used.
- [ ] No incomplete logic descriptions are present.
- [ ] No obvious latch inference unless intended.

---

## 6. Testbench Review

- [ ] Testbench compiles successfully.
- [ ] All important input combinations are tested.
- [ ] Expected outputs are verified automatically.
- [ ] PASS/FAIL messages are generated.
- [ ] Simulation completes successfully.

---

## 7. Simulation Review

- [ ] Simulation runs without errors.
- [ ] Waveform file is generated.
- [ ] Functional behavior matches the specification.
- [ ] No unexpected output behavior is observed.

---

## 8. Project Review

- [ ] Required project files are generated.
- [ ] Folder structure follows the engineering workspace.
- [ ] Documentation files are available.
- [ ] Project is ready for reuse.

---

## 9. AI Review

- [ ] AI did not assume unspecified requirements.
- [ ] AI did not introduce unnecessary features.
- [ ] AI output matches the engineering prompt.
- [ ] Manual engineering review has been completed.

---

## Final Decision

- [ ] Approved without changes
- [ ] Approved after minor corrections
- [ ] Requires prompt refinement
- [ ] Regenerate the project

--- End of Checklist ---
---
