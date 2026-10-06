---
name: svelte
description: Use when building, reviewing, or debugging Svelte 5 components and modules, including reactivity, runes, bindings, events, and snippets.
---

# Svelte 5

Use for Svelte components and modules (runes, bindings, events, snippets, attachments). For routing or application behavior, use the [SvelteKit skill](../sveltekit/SKILL.md).

## Documentation

For component/module work, use the current official docs, especially for version-sensitive or experimental APIs. If the Svelte MCP server is available, call `list-sections`, choose relevant sections by title and `use_cases`, then call `get-documentation` before implementing or advising. Otherwise use the CLI:

```sh
npx @sveltejs/mcp list-sections
npx @sveltejs/mcp get-documentation "<section1>,<section2>"
npx @sveltejs/mcp svelte-autofixer ./src/lib/Component.svelte
```

Escape `$` when passing rune-containing code inline through a shell.

## Changes and Validation

- Use `svelte-autofixer` when it is useful for a non-trivial Svelte change or to investigate a concrete issue; it is not required for every small markup or styling edit. Address relevant findings if you run it.
- Match checks to the changed surface; do not run a full check just because a file ends in `.svelte`. For CSS-only changes, skip full TypeScript/Svelte checks unless a compiler or runtime concern exists; prefer focused visual validation. For script, markup, component API, or TypeScript changes, run the project's focused check when it covers the changed code.

## Svelte 5 Practices

- Use runes: `$state` for reactive UI state (`$state.raw` for large reassigned, unmutated values), `$derived` for computations, and `$effect` mainly for external synchronization. Derive from props because they can change.
- Prefer `onclick`, keyed `{#each}`, and snippets over legacy events, unkeyed lists, and slots. Use attachments or `createSubscriber` for DOM/external sources, and context for subtree state.

Reference guides: [reactivity](references/svelte-reactivity.md), [attachments](references/attach.md), [function bindings](references/bind.md), [keyed each](references/each.md), [snippets](references/snippet.md), [render](references/render.md), [$inspect](references/inspect.md), [await](references/await-expressions.md), [hydratable values](references/hydratable.md).

## Playground

Offer a Playground link for useful examples only after confirmation; never for code written to project files.
