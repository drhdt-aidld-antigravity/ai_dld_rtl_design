## Prompt for Antigravity IDE

### Role

You are an AI engineering workspace setup assistant for an AI-Augmented RTL Design course.

### Context

A workspace specification file named `filesystem.md` is already available in the root of the engineering workspace.

This file lists the exact folders and files that must exist in the workspace.

The required structure includes engineering folders such as `.agents`, `prompts`, `tools`, `libraries`, `documentation`, `projects`, and root-level project files. The exact required structure is defined in `filesystem.md`.

### Task

Read `filesystem.md` and implement the complete workspace structure exactly as specified.

Create every folder and file listed in `filesystem.md`.

### Constraints

- Do not create any folder or file that is not listed in `filesystem.md`.
- Do not rename any folder or file.
- Do not change the folder hierarchy.
- Do not overwrite existing files.
- If a file already exists, preserve its current content.
- If a folder already exists, keep it and continue.
- Create missing files as empty placeholder files unless a README file is listed.
- For README files, add only this text:

```text
---update here---
````

* Use ASCII characters only.
* After creation, verify the generated workspace against `filesystem.md`.

### Expected Output

After completing the task, provide:

1. List of folders created.
2. List of files created.
3. List of items already existing and preserved.
4. List of any missing or failed items.
5. Final confirmation that the workspace structure matches `filesystem.md`.

Do not generate RTL code yet.
Do not create any design project yet.
Do not install tools yet.
Only implement and verify the workspace filesystem.