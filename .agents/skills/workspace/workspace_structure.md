# Workspace References

## Purpose

This document is the authoritative definition of the AI-assisted commercial RTL engineering workspace.

Whenever working inside this workspace, follow every instruction in this document exactly.

Do not create alternative folder structures.

Do not invent filenames or directories unless explicitly instructed.

---

# Workspace Directories

| Path | Instruction |
|------|-------------|
| `.agents/` | Use for Antigravity IDE workspace configuration only. |
| `.agents/skills/` | Store all Antigravity Skills here. |
| `.agents/skills/workspace/` | Store the Workspace Skill and its supporting templates here. |
| `.agents/skills/workspace/SKILL.md` | Treat this as the master workspace instruction file. |
| `.agents/skills/workspace/workspace_structure.md` | Defines the complete engineering workspace structure, folder usage, artifact locations and workspace organization. Follow this file exactly when creating, updating or maintaining the workspace. |
| `.agents/skills/workspace/templates/` | Store templates used by the workspace skill. |
| `.agents/skills/workspace/templates/project/` | Store project templates here. |
| `.agents/skills/workspace/templates/project/project_template.md` | Use this template whenever creating a new engineering project. |
| `.agents/skills/workspace/templates/documentation/` | Store documentation templates here. |
| `.agents/skills/workspace/templates/documentation/documentation_template.md` | Use this template whenever generating engineering documentation. |
| `prompts/` | Store reusable engineering prompts here. |
| `prompts/README.md` | Update this file to describe the available prompts. |
| `tools/` | Store engineering software shared by all projects. |
| `tools/oss-cad-suite/` | Use this OSS CAD Suite installation whenever simulation, synthesis or waveform analysis is required. |
| `tools/README.md` | Document installation and verification procedures for shared tools. |
| `libraries/` | Store reusable engineering libraries. |
| `libraries/standard_cells/` | Store technology libraries, PDK files and standard-cell related resources here. |
| `libraries/rtl/` | Store reusable RTL modules and reusable IP blocks here. Reuse existing modules before generating new ones. |
| `documentation/` | Store engineering standards, specifications and shared reference documents here. |
| `projects/` | Store all engineering projects here. |
| `projects/README.md` | Document project organization and conventions. |
| `README.md` | Maintain the overall workspace overview. |
| `LICENSE` | Store the repository license. |
| `.gitignore` | Maintain Git ignore rules for the workspace. |

---

# Engineering Project Structure

Every engineering project shall be created under:

```
projects/<project_name>/
```

The project structure shall follow:

.agents/skills/workspace/templates/project/project_template.md

exactly.

Do not modify the project structure unless explicitly instructed.

---

# Artifact Locations

Store generated engineering artifacts only in the following locations.

| Artifact | Location |
|----------|----------|
| RTL Modules | `projects/<project_name>/rtl/` |
| Testbenches | `projects/<project_name>/tb/` |
| Constraints | `projects/<project_name>/constraints/` |
| Scripts | `projects/<project_name>/scripts/` |
| Reports | `projects/<project_name>/reports/` |
| Generated Outputs | `projects/<project_name>/results/` |
| Waveforms | `projects/<project_name>/wave/` |
| Log Files | `projects/<project_name>/logs/` |
| Documentation | `projects/<project_name>/doc/` |

Do not store generated engineering artifacts outside these locations.

---

# Reuse Policy

Before generating any new artifact:

- Check whether a reusable version already exists.
- Prefer reuse over duplication.
- Preserve existing engineering artifacts unless instructed otherwise.

---

# Workspace Rules

Always use relative paths.

Never invent folder names.

Never invent filenames.

Never reorganize the workspace.

Never move engineering artifacts to different locations.

Never overwrite existing files without explicit instruction.

When the required location is unclear, request user confirmation before proceeding.

--- End of Workspace Definition ---
---
