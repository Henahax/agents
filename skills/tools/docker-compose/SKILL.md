---
name: docker-compose
description: Use when creating or reviewing Dockerfiles and Docker Compose files.
---

# Docker-Compose

- Start from the service provider's official Docker Compose example when available.
- Keep secrets and environment-specific values as `${VARIABLE}` placeholders.
- Prefer named volumes or explicit bind mounts over anonymous volumes; document the host path when a bind mount is required.
- Avoid publishing ports when the service is meant to be reached through a reverse proxy or an internal Docker network.
- Reuse existing external networks and service conventions instead of creating duplicates.
- Validate the Compose structure, but do not run Docker commands unless explicitly requested.
