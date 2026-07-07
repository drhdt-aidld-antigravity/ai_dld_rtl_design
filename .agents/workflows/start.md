---
description: Starting instructions
---

---
name: start
description: Initialize the AI RTL engineering workspace for the current session.
---

# Start Workspace

## Objective

Initialize the engineering workspace before beginning any engineering task.

---

# Workflow

Perform the following steps in order.

1. Read the complete contents of:

   - `.agents/skills/workspace/SKILL.md`
   - `.agents/skills/workspace/workspace_structure.md`
   - `.agents/skills/workspace/templates/project/project_template.md`
   - `.agents/skills/workspace/templates/documentation/documentation_template.md`

2. Load and remember all engineering rules, workspace rules, folder usage rules, project creation rules and documentation rules for the current session.

3. Scan the workspace.

4. Verify that the following directories exist:

   - `prompts/`
   - `tools/`
   - `libraries/`
   - `documentation/`
   - `projects/`

5. Verify that the following required files exist:

   - `.agents/skills/workspace/SKILL.md`
   - `.agents/skills/workspace/workspace_structure.md`
   - `.agents/skills/workspace/templates/project/project_template.md`
   - `.agents/skills/workspace/templates/documentation/documentation_template.md`

6. If any required file or directory is missing:

   - Stop initialization.
   - Report every missing item.
   - Do not make assumptions.
   - Do not create missing files or directories unless explicitly instructed.

7. If initialization completes successfully, respond only with:

```
Workspace initialized successfully.

Workspace rules loaded.
Workspace structure loaded.
Project template loaded.
Documentation template loaded.

Ready for engineering.
```

Do not generate RTL, testbenches, documentation or perform any engineering task during this workflow.

After finishing the task. Give a very brief response that you have copleted the starting task and read for next instruction.
Keep this response very brief.

Wait for the user's next instruction.
---
