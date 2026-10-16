---
name: github-rulesets
description: Create, review, or apply GitHub repository rulesets for branch protection.
---

# GitHub Rulesets

Use when configuring GitHub repository rulesets through JSON import or the API.

- Inspect the repository's branches and existing protections before choosing targets; don't assume every repository has the same branches.
- Adapt the [main template](references/templates/protect-main.json) to require pull requests, resolve review conversations, and block deletion and force pushes. It requires no approving review and has no bypass actors.
- Adapt the [develop template](references/templates/protect-develop.json) to allow direct commits while blocking deletion and force pushes.
- Add required status checks only when the named CI checks exist and run on pull requests. Keep branch patterns and bypass actors explicit.
- For manual setup, import each JSON from **Settings → Rules → Rulesets → New ruleset → Import a ruleset**, review it, then create it. Apply the right ruleset to each intended repository.
- Change repository settings only when the user requests it. Report any ruleset that could not be applied or verified.
