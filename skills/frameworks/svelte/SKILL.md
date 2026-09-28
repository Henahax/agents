---
name: svelte
description: Use when building, reviewing, or debugging Svelte 5 or SvelteKit applications.
---

# Svelte and SvelteKit

Use this skill for Svelte components, Svelte 5 reactivity, SvelteKit routes, forms, load functions, and application configuration.

## Documentation

When the Svelte MCP server is available and the task involves Svelte or SvelteKit:

1. Call `list-sections` first to discover the available documentation.
2. Review section titles and `use_cases` to identify all documentation relevant to the task.
3. Call `get-documentation` for those sections before implementing or advising.

Use the current official documentation for version-specific behavior instead of relying on memory.

## Svelte code changes

- When writing or modifying Svelte code, run `svelte-autofixer` before presenting the result.
- Address its reported issues and suggestions, then run it again until it returns no issues or suggestions.
- Follow the Svelte 5 and SvelteKit conventions documented for the project's installed versions.

## Validation

- Match validation effort to the scope and risk of the change. For small, localized edits, prefer a focused check or no additional project-wide command when the change does not warrant one.
- Run the consuming project's full check, lint, or build scripts for broad, cross-cutting, or higher-risk changes, choosing from the scripts that project actually provides.

## Playground

- Offer a Svelte Playground link after completing an example when a link would be useful.
- Generate one only after the user confirms.
- Do not generate Playground links for code written to files in the user's project.
