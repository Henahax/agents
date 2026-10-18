# Documentation Rules

- Write agent Markdown and documentation in English.
- Keep shared rules and skills harness-agnostic; rely on `AGENTS.md`, `SKILL.md`, and explicit paths rather than automatic discovery behavior.
- Keep new and edited agent guidance concise, precise, and action-oriented.
- Prefer bullets over paragraphs; use one clear instruction per bullet where practical.
- State relevant conditions and exceptions explicitly.
- Use a consistent **Do**, **Don't**, and **Example** pattern when it improves clarity; omit sections that add no value.
- Write only guidance that changes an agent's decisions, actions, or necessary context.
- Keep each fact in one canonical place; link instead of repeating it.
- When changing `templates/project-AGENTS.md`, check sibling projects for `AGENTS.md` files based on it and update their template-derived guidance while preserving project-specific instructions.
- Before finishing, check that guidance is clear, concise, non-redundant, and consistent with related files; verify links and add examples where they remove ambiguity.
- Remove any sentence that adds no decision, action, or necessary context.
