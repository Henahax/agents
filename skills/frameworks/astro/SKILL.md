---
name: astro
description: "Use when building, reviewing, debugging, or upgrading Astro sites, components, content collections, rendering modes, integrations, or configuration."
---

# Astro

Use for Astro application and component work. Confirm the installed Astro version and consult its official documentation for version-sensitive APIs.

## Rendering and components

- Prefer Astro components for static UI; add framework components only when interaction requires them.
- Choose `client:*` hydration directives deliberately. Do not hydrate static content.
- Check the rendering mode and adapter before adding server-rendered behavior. Keep server-only work out of browser code.
- Verify content collection APIs and configuration against the installed Astro version.

## Validation

Use the consuming project's scripts. Run Astro checks and a build when relevant, then verify the affected route or rendering behavior.
