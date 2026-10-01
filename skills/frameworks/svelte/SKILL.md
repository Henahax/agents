---
name: svelte
description: Use when building, reviewing, or debugging Svelte 5 components and modules, including reactivity, runes, bindings, events, and snippets.
---

# Svelte 5

Use this skill for component-level Svelte work, including Svelte 5 reactivity, runes, bindings, events, snippets, and attachments. For routing and application-level behavior, use the separate [SvelteKit skill](../sveltekit/SKILL.md).

## Documentation

When the Svelte MCP server is available and the task involves Svelte components or modules:

1. Call `list-sections` first to discover the available documentation.
2. Review section titles and `use_cases` to identify all documentation relevant to the task.
3. Call `get-documentation` for those sections before implementing or advising.

Use the current official documentation for version-specific behavior instead of relying on memory.

If the MCP server is unavailable, use the `@sveltejs/mcp` CLI:

```sh
npx @sveltejs/mcp list-sections
npx @sveltejs/mcp get-documentation "<section1>,<section2>"
npx @sveltejs/mcp svelte-autofixer ./src/lib/Component.svelte
```

When passing rune-containing code inline through a shell, escape `$` to prevent variable substitution.

## Svelte code changes

- When writing or modifying Svelte code, run `svelte-autofixer` before presenting the result.
- Address its reported issues and suggestions, then run it again until it returns no issues or suggestions.
- Follow the Svelte conventions documented for the project's installed version.

## Svelte 5 practices

- Use runes for new code. Use `$state` only for values that need to update the UI or other reactive computations; consider `$state.raw` for large values that are reassigned rather than mutated.
- Use `$derived` for computations. Treat `$effect` as an escape hatch for synchronizing with external systems, and avoid changing state inside effects when a derived value or event handler is appropriate.
- Treat props as changeable; use `$derived` for values that depend on props.
- Use event attributes such as `onclick`, keyed `{#each}` blocks with stable unique keys, and snippets with `{@render}` rather than legacy event directives, unkeyed lists, or slots in new code.
- Prefer attachments for DOM setup and `createSubscriber` for integrating external event sources with reactivity. Use context for state shared across a component subtree.
- Check the installed Svelte version and current documentation before using version-sensitive or experimental features, including async components.

For detailed guidance, see [reactivity](references/svelte-reactivity.md), [attachments](references/attach.md), [function bindings](references/bind.md), [keyed each blocks](references/each.md), [snippets](references/snippet.md), [render tags](references/render.md), [$inspect](references/inspect.md), [await expressions](references/await-expressions.md), and [hydratable values](references/hydratable.md).

## Validation

- Match validation effort to the scope and risk of the change. For small, localized edits, prefer a focused check or no additional project-wide command when the change does not warrant one.
- Run the consuming project's full check, lint, or build scripts for broad, cross-cutting, or higher-risk changes, choosing from the scripts that project actually provides.

## Playground

- Offer a Svelte Playground link after completing an example when a link would be useful.
- Generate one only after the user confirms.
- Do not generate Playground links for code written to files in the user's project.
