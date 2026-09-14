---
name: docker
description: Use when creating or optimizing Dockerfiles for Node.js, TypeScript, SvelteKit, Astro, or similar applications. Covers multi-stage builds, Alpine versus slim image selection, production dependencies, Docker build context, and runtime validation.
---

# Docker Application Images

Use this skill to create smaller, reproducible Node.js application images.

## Workflow

1. Inspect `package.json`, the lockfile, build/start scripts, framework adapter, output directory, and native dependencies.
2. Choose a stable base: use `node:<major>-alpine` for pure JavaScript or packages with musl binaries; use `node:<major>-bookworm-slim` when glibc, system packages, or Alpine compatibility is required. Use `nginx:alpine` for fully static output.
3. Use a `.dockerignore`, then separate build and runtime stages. Copy lockfiles first, run `npm ci` in the build stage, copy source, build, and install only production dependencies in the fresh runtime stage.
4. Keep server dependencies in `dependencies`; put build, type-check, lint, format, and test tools in `devDependencies`. Use `npm ci --omit=dev --ignore-scripts` at runtime when install scripts are unnecessary.
5. Copy only compiled output and required runtime files. Do not delete files from earlier layers to reduce size. Never bake secrets or `.env` files into the image.
6. Set `NODE_ENV=production`, run as `node`, and validate with a focused build plus a runtime smoke test. Test a representative operation for native modules.

Runtime source is valid only for applications that explicitly need migrations, seeding, templates, or runtime compilation. Astro standalone and SvelteKit adapter-node bundle much of their server code, but external imports still need a runtime check. A dev-only `prepare` script may fail during production install; use `--ignore-scripts` only after confirming no production install script is needed. Compare local uncompressed sizes with `docker image inspect`, not registry transfer sizes.

## Template

Use the [universal Node application template](references/templates/Dockerfile) as the starting point. Replace every `{{PLACEHOLDER}}` before building:

- `{{NODE_IMAGE}}`: for example `node:22-alpine` or `node:22-bookworm-slim`
- `{{BUILD_COMMAND}}`: usually `npm run build`
- `{{BUILD_OUTPUT}}`: usually `dist` for TypeScript/Astro or `build` for SvelteKit adapter-node
- `{{PORT}}`: the container port, such as `3000` or `4321`
- `{{START_FILE}}`: the compiled entrypoint, such as `dist/index.js` or `dist/server/entry.mjs`

The [general .dockerignore template](references/templates/.dockerignore) can be copied unchanged and adapted for project-specific files.

Adapt paths, build commands, ports, and runtime entrypoints to the project instead of copying them blindly.
