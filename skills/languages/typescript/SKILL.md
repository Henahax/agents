---
name: typescript
description: "Use when authoring, reviewing, or debugging TypeScript code, declarations, or compiler configuration."
---

# TypeScript

- Follow the project's `tsconfig` and runtime target; do not weaken compiler settings to hide local errors.
- Prefer inference for obvious local types and explicit types at public or external boundaries.
- Prefer `unknown` with narrowing over `any` or unsafe assertions. Validate external data at runtime because TypeScript types are erased.
- Reuse existing schemas and types instead of maintaining duplicate definitions.
- Run the consuming project's relevant type-check and test scripts; do not assume `tsc` alone covers framework-specific code.
