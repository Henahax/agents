---
name: docker-compose
description: "Use when creating, reviewing, or troubleshooting Docker Compose files such as compose.yaml and docker-compose.yml. Dockerfile guidance is in the Docker skill."
---

# Docker-Compose

- Start from the service provider's official Docker Compose example when available.
- Keep secrets and environment-specific values as `${VARIABLE}` placeholders.
- Prefer named volumes or explicit bind mounts over anonymous volumes; document the host path when a bind mount is required.
- Avoid publishing ports when the service is meant to be reached through a reverse proxy or an internal Docker network.
- Reuse existing external networks and service conventions instead of creating duplicates.
- Validate with `docker compose config --quiet` when available. Do not build, pull, or start/stop services unless explicitly requested.
