# Codex Setup Template

Use this structure when generating the Codex setup deliverable.

---

# [APP_NAME] Codex Setup Guide

## Overview

This guide sets up Codex for the [APP_NAME] Rails project:

1. `AGENTS.md` for project context and coding rules
2. `.mcp.json` for project MCP server configuration
3. `.codex/commands/` for reusable task prompts

---

## File Structure

```
[project_name]/
├── AGENTS.md
├── .mcp.json
├── .codex/
│   └── commands/
│       ├── test.md
│       ├── db.md
│       ├── analyze.md
│       ├── generate.md
│       └── guide.md
└── docs/
    ├── MVP_BUSINESS_PLAN.md
    ├── BRAND_GUIDE.md
    ├── TECHNICAL_GUIDE.md
    └── assets/
        └── logo.svg
```

---

## 1. AGENTS.md

Create `AGENTS.md` with:

1. Project summary
2. Architecture constraints
3. Mandatory planning workflow
4. Rails style and testing standards
5. Anti-patterns to avoid

Suggested sections:

- Project mission and user value
- Tech stack (Rails 8, Hotwire, Tailwind 4, Minitest)
- Data and money rules (integer cents)
- I18n and timezone expectations
- Delivery workflow (plan -> implement -> verify)

---

## 2. .mcp.json

Use project-local MCP configuration when needed by the team.

Example:

```json
{
  "mcpServers": {
    "rails": {
      "command": "rails-mcp-server",
      "args": ["--project-path", "."],
      "env": {}
    }
  }
}
```

---

## 3. .codex/commands/

Add reusable markdown command prompts:

- `test.md` -> test and verification flow
- `db.md` -> schema and migration operations
- `analyze.md` -> code analysis and review routine
- `generate.md` -> scaffolding conventions
- `guide.md` -> architecture reminders

Each command file should include:

1. Intent of the command
2. Required context before execution
3. Steps to run
4. Expected output format

---

## Verification Checklist

- [ ] AGENTS.md reflects the MVP and technical guide decisions
- [ ] .mcp.json points to valid local commands and args
- [ ] .codex/commands files exist and are actionable
- [ ] Setup instructions are clear for a new contributor
