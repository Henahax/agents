# Agent Instructions

Use this repository as a shared source of reusable skills and references.

## Shared guidance

- Write agent Markdown and documentation in English.
- Keep shared instructions concise and precise. Before finishing instruction or documentation edits, check related files for duplicate or conflicting guidance; keep one canonical rule and link to it where needed.

## Using shared skills

- Read the consuming project's `AGENTS.md` first; its project-specific rules take precedence.
- Apply `skills/core/token-efficiency/SKILL.md` by default.
- Load a skill when its description matches the task; consult its references only as needed.
- Reference only relevant shared skills in the consuming project's `AGENTS.md`. Do not copy shared skills into project repositories.

## Changes and validation

- Ask instead of guessing when important details are unclear; state uncertainty early.
- Prefer small, precise changes that follow the project's existing style and reuse its helpers and abstractions. Avoid unrelated refactoring.
- Match validation to the change's scope and risk. Prefer focused checks for localized changes; run full checks or production builds for broad or higher-risk changes, when focused checks indicate they are needed, or when requested. Use a running development server for feedback on small edits.
