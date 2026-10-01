---
name: sveltekit
description: Use when building, reviewing, debugging, or upgrading SvelteKit applications, including routes, load functions, form actions, server code, hooks, and configuration.
---

# SvelteKit

Use this skill for application-level SvelteKit work: file-based routing, server and universal load functions, form actions, endpoints, hooks, SSR, adapters, and framework configuration. For component-level Svelte patterns, use the shared [Svelte skill](../svelte/SKILL.md). Load both skills when a task changes both application behavior and Svelte components.

## Documentation

When the Svelte MCP server is available:

1. Call `list-sections` to discover the available documentation.
2. Review section titles and `use_cases` for the relevant SvelteKit behavior.
3. Call `get-documentation` for those sections before implementing or advising.

Use the official documentation for the project's installed SvelteKit version. If MCP is unavailable, use `npx @sveltejs/mcp list-sections` and `npx @sveltejs/mcp get-documentation "<section1>,<section2>"`.

## Application boundaries

- Follow SvelteKit's file and module conventions for routes, layouts, server-only modules, endpoints, and hooks; verify version-sensitive APIs against the installed version.
- Keep secrets and server-only dependencies in server modules. Do not import private environment variables or server-only code into browser-reachable modules.
- Choose universal or server-only load functions based on where data access must happen. Avoid duplicating requests or moving trusted server work into the browser without a reason.
- Keep request-specific mutable state out of module scope so it cannot leak between server-rendered requests.
- Preserve progressive enhancement for forms where practical, and validate submitted data on the server regardless of client-side validation.
- For upgrades, consult the migration guide and release notes for the source and target versions before applying version-specific changes.

## Validation

Use the consuming project's scripts for type checking, linting, and builds. Match validation to the scope of the change; prefer a focused check for a narrow route or server-module edit and run broader checks for cross-cutting changes.
