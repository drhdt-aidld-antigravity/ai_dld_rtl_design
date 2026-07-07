# Project Template

## Purpose

This document defines the standard project structure for every engineering project created in this workspace.

Whenever creating a new project, follow this document exactly.

Do not modify the project structure unless explicitly instructed.

Do not omit required folders or files.

---

# Project Name

Create the project using the user-specified project name.

Create the project under:

```
projects/<project_name>/
```

Replace `<project_name>` with the actual project name.

---

# Project Structure

| Path | Instruction |
|------|-------------|
| `projects/<project_name>/` | Create the project root directory. |
| `projects/<project_name>/rtl/` | Store all synthesizable RTL modules here. |
| `projects/<project_name>/tb/` | Store all testbenches here. |
| `projects/<project_name>/constraints/` | Store timing, synthesis and implementation constraints here. |
| `projects/<project_name>/scripts/` | Store simulation, synthesis, automation and utility scripts here. |
| `projects/<project_name>/reports/` | Store simulation, synthesis, lint and verification reports here. |
| `projects/<project_name>/results/` | Store generated outputs including synthesized netlists and generated design files here. |
| `projects/<project_name>/wave/` | Store waveform databases generated during simulation here. |
| `projects/<project_name>/logs/` | Store compilation, simulation and synthesis log files here. |
| `projects/<project_name>/doc/` | Store project documentation here. |
| `projects/<project_name>/README.md` | Create the project overview document. |

---

# README.md

Create a README.md file containing the following placeholder.

```text
TODO: Update this file.
```

---

# Folder Usage Rules

RTL modules shall only be stored inside:

```
rtl/
```

Testbenches shall only be stored inside:

```
tb/
```

Constraints shall only be stored inside:

```
constraints/
```

Scripts shall only be stored inside:

```
scripts/
```

Reports shall only be stored inside:

```
reports/
```

Generated outputs shall only be stored inside:

```
results/
```

Waveform files shall only be stored inside:

```
wave/
```

Log files shall only be stored inside:

```
logs/
```

Engineering documentation shall only be stored inside:

```
doc/
```

Do not store engineering artifacts outside their designated directories.

---

# Project Creation Rules

Always create every required folder.

Do not create additional folders unless explicitly instructed.

Do not rename folders.

Use the exact directory names defined in this document.

---

# Existing Projects

If the project already exists:

- Preserve the existing project structure.
- Do not overwrite existing files unless explicitly instructed.
- Create only missing folders or files.

---

# File Generation Rules

When generating engineering artifacts:

- Save RTL modules in `rtl/`.
- Save testbenches in `tb/`.
- Save constraints in `constraints/`.
- Save scripts in `scripts/`.
- Save reports in `reports/`.
- Save generated outputs in `results/`.
- Save waveform databases in `wave/`.
- Save log files in `logs/`.
- Save documentation in `doc/`.

---

# General Rules

Always use relative paths.

Do not invent filenames.

Do not invent folder names.

Do not reorganize the project.

If the required project name or destination is unclear, ask the user before creating the project.

Follow this project template exactly.

--- End of Project Template ---
---
