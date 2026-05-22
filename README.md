# mvp-creator-codex

Codex plugin that ports the `mvp-creator` workflow from `maquina-app/rails-claude-code` to Codex.

## References to Original Plugin

- Original repository: https://github.com/maquina-app/rails-claude-code
- Original plugin folder: https://github.com/maquina-app/rails-claude-code/tree/main/mvp-creator

## Included

- `skills/mvp-creator/SKILL.md` - core guided workflow
- `skills/mvp-creator/references/` - templates and Rails references
- `scripts/init.sh` - bootstrap output folders for a new MVP doc set
- `.codex-plugin/plugin.json` - Codex plugin manifest

## Deliverables Produced

1. `docs/RESEARCH_REPORT.md`
2. `docs/MVP_BUSINESS_PLAN.md`
3. `docs/BRAND_GUIDE.md`
4. `docs/TECHNICAL_GUIDE.md`
5. Codex setup files (`AGENTS.md`, `.mcp.json`, `.codex/commands/`)

## Install in Codex

These commands assume this repo is at:
`/Users/grillermo/c/mvp-creator-codex`

1. Add this local marketplace:

```bash
codex plugin marketplace add /Users/grillermo/c/mvp-creator-codex
```

2. Install the plugin from marketplace `maquina`:

```bash
codex plugin add mvp-creator-codex@maquina
```

3. Verify installation:

```bash
codex plugin list
```

## Update During Development

If you change plugin files and want Codex to pick up updates, reinstall the plugin:

```bash
codex plugin add mvp-creator-codex@maquina
```

Start a new Codex thread/session after reinstall so updated skill content is loaded.
