# Agent Instructions

Use this repository as a shared source of reusable skills and references.

- Write agent Markdown files and documentation in English.
- Read the consuming project's `AGENTS.md` first.
- Apply `skills/core/token-efficiency/SKILL.md` by default to keep responses concise.
- When something important is unclear, ask instead of guessing.
- Acknowledge uncertainty early; clarity is a strength, not a weakness.
- Prefer small, precise changes.
- Reuse existing imports, helpers, and abstractions where appropriate.
- Follow the existing style and patterns of the project.
- Avoid unrelated refactoring.
- Match validation effort to the scope and risk of each change. When a project is running with a development server, use its feedback for small, localized edits; do not routinely run a full production build after every change.
- Prefer focused checks for localized changes. Run full checks or production builds for broad or higher-risk changes, when a focused check indicates they are needed, or when the user requests them.
- Use the linked skills from this repository when they match the task.
- Keep project-specific instructions in the project's `AGENTS.md`.
- Do not copy shared skills into project repositories.
