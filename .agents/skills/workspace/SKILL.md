---
name: workspace
description: AI-assisted commercial RTL engineering workspace. Use this skill whenever working inside this workspace to create, modify, verify or document RTL projects.
---

# AI RTL Engineering Workspace

## Purpose

This skill defines how engineering work shall be performed within this workspace.

Always follow the workspace structure, project template and documentation template.

Do not create alternative workflows unless explicitly instructed.

---

# Workspace Definition

The following files define this workspace.

| File | Instruction |
|------|-------------|
| `.agents/skills/workspace/workspace_structure.md` | Follow this file exactly. It is the authoritative definition of the engineering workspace, directory structure and artifact locations. |
| `.agents/skills/workspace/templates/project/project_template.md` | Use this template whenever creating a new engineering project. |
| `.agents/skills/workspace/templates/documentation/documentation_template.md` | Use this template whenever generating engineering documentation. |

Do not invent alternative project structures or documentation formats.
---

# Workspace Rules

Always follow the directory structure defined in:

`.agents/skills/workspace/workspace_structure.md`

Always create projects using:

`.agents/skills/workspace/templates/project/project_template.md`

Always create documentation using:

`.agents/skills/workspace/templates/documentation/documentation_template.md`

Always use relative paths within the workspace.

Always reuse existing engineering artifacts whenever possible.

Always preserve existing project organization.

Do not create folders or files outside the defined workspace unless explicitly instructed.

Do not rename existing folders or files unless explicitly instructed.

Do not overwrite existing engineering artifacts unless explicitly instructed.

---

# Engineering Rules

Generate commercial-quality synthesizable Verilog.

Before finalizing the RTL, silently review it against:

- LowRISC Verilog Coding Style Guide
- OpenTitan Hardware Style Guide
- Verible Style Rules
- Cliff Cummings SNUG Best Practices

Silently apply every applicable rule.

Generate code that is:

- Readable
- Maintainable
- Modular
- Reusable
- Compatible with OSS CAD Suite whenever practical

Avoid implementations that unnecessarily complicate debugging, verification or synthesis.

Avoid unnecessary dependencies on vendor-specific features unless explicitly requested.

Generate the following artifacts only when required by the requested engineering task:

- Testbench
- Simulation script
- Verification report
- Engineering documentation

Save all generated engineering artifacts in the locations defined by:

.agents/skills/workspace/workspace_structure.md

Unless explicitly requested otherwise, output only the final engineering artifact.

---

# AI Behaviour

Do not assume missing requirements.

Do not invent specifications.

Do not invent interfaces.

Do not invent protocols.

Do not invent filenames or folder names.

If information is incomplete or ambiguous:

1. Identify the missing information.
2. Present the available options.
3. Recommend the most appropriate option.
4. Request user approval before proceeding.

Do not continue until ambiguity has been resolved.

When multiple engineering solutions are possible, recommend the simplest commercially accepted solution unless the user specifies otherwise.

Always preserve existing engineering artifacts unless explicitly instructed to modify or replace them.

Follow every instruction in this skill and the referenced workspace files strictly.

--- END of SKILL ---
