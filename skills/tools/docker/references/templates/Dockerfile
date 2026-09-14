# TEMPLATE: replace every {{PLACEHOLDER}} before building.
# This file is intentionally named Dockerfile so it can be copied directly.
# Common images: node:22-alpine for musl-compatible apps; node:22-bookworm-slim for glibc/system-package requirements.
FROM {{NODE_IMAGE}} AS build
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
# Common commands: npm run build, npm run compile, or another package.json build script.
RUN {{BUILD_COMMAND}}

FROM {{NODE_IMAGE}} AS runtime
WORKDIR /app
ENV NODE_ENV=production
ENV HOST=0.0.0.0
# Common ports: 3000 for APIs/SvelteKit; 4321 for Astro.
ENV PORT={{PORT}}

COPY package*.json ./
RUN npm ci --omit=dev --ignore-scripts && npm cache clean --force
# Common output directories: dist for TypeScript/Astro; build for SvelteKit adapter-node.
COPY --from=build /app/{{BUILD_OUTPUT}} ./{{BUILD_OUTPUT}}

USER node
EXPOSE {{PORT}}
# Common entrypoints: dist/index.js, build/index.js, or dist/server/entry.mjs.
CMD ["node", "{{START_FILE}}"]