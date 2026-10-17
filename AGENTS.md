# Shared Agent Guidance

This repository contains reusable principles, rules, and skills. Follow the consuming project's instructions first.

## Load guidance as needed

- Use [coding principles](principles/coding.md) for general implementation decisions.
- Apply [communication principles](principles/communication.md) by default, unless the user requests a different level of detail or format.
- Use the [validation principle](principles/validation.md) to choose validation proportionate to the change.
- Use [documentation rules](rules/documentation.md) when editing agent or project documentation.
- Use [validation rules](rules/validation.md) for concrete validation guidance after choosing the appropriate scope.
- Before code work, identify the stack from manifests, config, files, and task scope. Load every matching skill below and follow its cross-references.

### Frameworks

- [Astro](skills/frameworks/astro/SKILL.md): Astro files, content, rendering, integrations, or config.
- [Svelte](skills/frameworks/svelte/SKILL.md): components, runes, bindings, events, or snippets.
- [SvelteKit](skills/frameworks/sveltekit/SKILL.md): routes, loads, actions, endpoints, hooks, SSR, adapters, or config. Also load Svelte when components are involved.

### Languages

- [CSS](skills/languages/css/SKILL.md): styles, including component styles.
- [HTML](skills/languages/html/SKILL.md): standalone markup, semantics, forms, or accessibility.
- [TypeScript](skills/languages/typescript/SKILL.md): TypeScript code, including typed component scripts and compiler config.

### Tools

- [Docker](skills/tools/docker/SKILL.md): Dockerfiles or image builds.
- [Docker Compose](skills/tools/docker-compose/SKILL.md): Compose files; also load Docker for image builds.
- [GitHub](skills/tools/github/SKILL.md): repos, issues, PRs, Actions, or releases via integration/CLI.
- [GitHub Actions](skills/tools/github-actions/SKILL.md): `.github/workflows/` files.
- [GitHub Rulesets](skills/tools/github-rulesets/SKILL.md): repository rulesets.

Do not copy shared guidance into consuming projects or maintain per-project skill lists.
