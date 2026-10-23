# Agent Playbook

A vendor-neutral collection of reusable rules and skills for AI coding agents. It keeps shared guidance in one place while projects retain only their own durable rules.

## Structure

```text
agents/
├── AGENTS.md                 # Short entry point and guidance index
├── README.md
├── rules/                    # Reusable guidance by topic
│   ├── coding.md
│   ├── communication.md
│   ├── documentation.md
│   └── validation.md
├── skills/                   # Task-specific knowledge, loaded when relevant
│   ├── frameworks/
│   ├── languages/
│   └── tools/
└── templates/                # Minimal project integration files
    ├── project-AGENTS.md
    ├── project-CLAUDE.md
    └── README.md
```

## How to use the playbook

Start with the consuming project's `AGENTS.md`. It points to this repository and contains project-specific rules. For code tasks, use the skill index in the shared `AGENTS.md` to identify and load matching skills and relevant rules. Do not load unrelated guidance.

Projects do not need to enumerate shared skills. Skill descriptions indicate when each skill applies. Do not copy shared guidance into project repositories.

## What belongs where

- **Rules** state expected actions and constraints, including relevant conditions, grouped by topic.
- **Skills** provide focused knowledge or workflows that apply to particular tasks or technologies. Each skill lives in `skills/<category>/<name>/SKILL.md` and may include supporting references.
- **Project `AGENTS.md`** contains only durable, project-specific context or constraints that are not already clear from the repository.

Keep the root `AGENTS.md` short and use it as an index. Group related guidance by topic. Add a document only when it captures reusable guidance that does not fit an existing one. Keep tool-specific setup or syntax out of shared guidance; add a small adapter only when a real tool requires it.

## Adding a skill

Add a focused skill under the relevant category:

```text
skills/<category>/<skill-name>/SKILL.md
skills/<category>/<skill-name>/references/  # optional
```

- Add the skill's applicability and link to the skill index in `AGENTS.md`.
- Keep its description short and clear about when it applies.
- Consult supporting references only as needed.
