---
name: github
description: "Use when inspecting or managing GitHub repositories, issues, pull requests, Actions workflows, or releases with GitHub integrations or the CLI."
---

# GitHub

- Before making changes, confirm the target repository and branch and inspect current state; do not assume the workspace's remote is the intended target.
- Prefer available GitHub integrations or `gh` commands.
- Create, update, comment, merge, close, publish, or push only when requested; these actions change remote state.
- Never expose credentials or print tokens.
- Report the outcome and relevant GitHub links; distinguish drafts from published changes.
