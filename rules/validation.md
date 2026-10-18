# Validation Rules

- Choose validation in proportion to the change's scope and risk; start with the smallest useful check.
- Prefer focused checks for localized changes.
- Run full checks or production builds for broad or higher-risk changes, when focused checks indicate they are needed, or when requested.
- Use a running development server for feedback on small edits when available.

**Example:** A local text change needs a focused check; a cross-cutting behavior change may need the full suite or a production build.
