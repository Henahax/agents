---
name: github-actions
description: Create, edit, or review GitHub Actions workflows that build and publish Docker images for a repository.
---

# GitHub Actions for Docker Images

Use for Docker image publishing workflows, not general GitHub Actions tasks.

## Workflow

- Inspect the default branch, build scripts, Dockerfile, image name, existing workflow, and registry secrets before editing.
- Publish on pushes to the production branch (`main` by default); merges there trigger the same event. Keep `workflow_dispatch` if useful. Pull requests may build for validation but must never publish or receive registry credentials.
- For Node.js, use `npm ci` and the real production build command. Preserve required project setup; omit unused artifact copying.
- Pin the current supported Node.js LTS major explicitly (for example, `node-version: 24`) for predictable production builds; review the official Node.js release schedule regularly and update it deliberately.
- Tag with `latest` and the maintained version (usually `package.json`); use a commit SHA if no version exists. Only publish `latest` from the production branch.
- Do not bump versions or commit/push from the workflow unless explicitly required. Read registry credentials through a login action and grant only needed permissions, usually `contents: read` for Docker Hub.
- Use current supported major versions of GitHub Actions; verify them against the official releases before creating or updating a workflow.
- Keep names consistent and adapt the [template](references/templates/docker-image-publish.yml), replacing placeholders and retaining required project-specific steps.

## Review

Confirm triggers and tags are correct, pull requests cannot publish, and no version-bump or git-push steps remain. Validate syntax when a suitable validator is available; never publish to validate.
