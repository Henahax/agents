# Agent Skills & Instructions

A central, reusable collection of instructions, skills, and reference material for AI coding agents.

The goal is to keep agent knowledge **consistent, reusable, and independent from individual code repositories**.

## Structure

```text
agents/
├── AGENTS.md              # Instructions for working with this repository
├── skills/                # Reusable agent skills
│   ├── core/              # General engineering workflows
│   ├── languages/         # Language-specific knowledge
│   ├── frameworks/        # Framework-specific knowledge
│   ├── tools/             # Tools and infrastructure
│   ├── databases/         # Database-specific knowledge
│   └── domains/           # Domain-specific knowledge
├── references/            # Shared reference material
├── templates/             # Templates for integrating this repo into projects
├── scripts/               # Automation and validation
└── docs/                  # Documentation
```

## Concepts

### `AGENTS.md`

`AGENTS.md` provides **always-relevant context and instructions**.

Each project repository should have a small, project-specific `AGENTS.md` that describes the project and points agents towards relevant shared skills.

### References

Detailed information that does not need to be loaded every time belongs in `references/`.

This enables **progressive disclosure**: agents start with the essential instructions and load additional details only when needed.

### Project-specific rules

Project-specific knowledge belongs in the project's own `AGENTS.md`, for example:

* Project architecture
* Local conventions
* Development commands
* Project-specific exceptions
* Repository-specific decisions

The central repository should contain **reusable knowledge only**.

## Templates

The `templates/` directory contains files that can be copied or adapted when integrating the central repository into another project.

For example:

```text
templates/
├── AGENTS.md
└── skill/
    └── SKILL.md
```

The project `AGENTS.md` should remain lightweight and reference the relevant shared skills instead of duplicating their content.

## Example

A general Docker convention belongs in:

```text
skills/tools/docker/SKILL.md
```

Detailed Docker Compose conventions can live in:

```text
skills/tools/docker/references/compose.md
```

A project-specific Docker exception belongs in:

```text
my-project/AGENTS.md
```

## Design Principles

1. **Single source of truth** — avoid duplicating shared agent instructions.
2. **Progressive disclosure** — load only the knowledge needed for the current task.
3. **Reusable over project-specific** — shared knowledge must be portable across projects.
4. **Concise instructions** — optimize for signal, not documentation volume.
5. **Clear ownership** — put each piece of knowledge in the appropriate location.
6. **Avoid skill sprawl** — create skills for meaningful capabilities, workflows, or technology-specific knowledge.

## Adding a Skill

Add reusable knowledge to the appropriate category:

```text
skills/<category>/<skill-name>/
├── SKILL.md
└── references/       # optional
```

Keep each skill focused on one clear purpose.

Project-specific instructions should **not** be added here. Put them in the project's own `AGENTS.md`.

## Integration

Individual repositories should keep their local agent configuration minimal and consume shared knowledge from this repository.

The exact integration mechanism may depend on the coding agent being used, but this repository remains the **single source of truth** for shared skills and conventions.
