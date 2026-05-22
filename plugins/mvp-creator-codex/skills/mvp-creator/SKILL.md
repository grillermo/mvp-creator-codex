---
name: mvp-creator
description: Create comprehensive MVP documentation for Rails applications. Use this skill whenever a user describes a new app idea, wants to explore a SaaS concept, needs competitor research, or is starting a new Rails project from scratch.
---

# MVP Creator

Create comprehensive MVP documentation for Rails applications through guided research and discovery.

## Overview

This skill produces 5 deliverables for a new Rails application:

1. Research Report — Competitor analysis, market overview, feature comparison
2. MVP Business Plan — Vision, features, user flows, success metrics
3. Brand Guide — Logo, colors, typography, components, voice
4. Technical Guide — Architecture, patterns, data models, code style
5. Codex Setup — AGENTS.md, .mcp.json, optional reusable prompt files for Codex workflows

## Workflow

```
Topic/Idea -> Research -> Discovery Questions -> Generate Deliverables -> Handoff to SDD
```

### Phase 1: Research

When the user provides a topic or app idea:

1. Conduct web research for 2-5 similar apps/competitors.
2. Research business models, features, and pricing.
3. Identify market gaps and opportunities.
4. Present findings and ask for feedback before proceeding.

Output file: `docs/RESEARCH_REPORT.md`
Template: `./references/deliverable-templates/research-report.md`

### Phase 2: Discovery Questions

After research is approved, gather project-specific information using the Discovery Question Templates below.

Ask Core Questions first. Ask Feature Questions after research review. Ask Brand Questions before generating the Brand Guide.

### Phase 3: Generate Deliverables

Generate each deliverable sequentially. Before presenting any deliverable, run its checklist from Quality Checklist. Get approval before moving to the next.

1. MVP Business Plan -> `docs/MVP_BUSINESS_PLAN.md`
Template: `./references/deliverable-templates/mvp-business-plan.md`
2. Brand Guide -> `docs/BRAND_GUIDE.md` with logo SVGs inline
Template: `./references/deliverable-templates/brand-guide.md`
Reference: `./references/rails-ui-patterns.md`
3. Technical Guide -> `docs/TECHNICAL_GUIDE.md`
Template: `./references/deliverable-templates/technical-guide.md`
References: `./references/rails-philosophy.md`, `./references/rails-implementation-patterns.md`
If JSON API is required, also use `./references/rails-api-patterns.md`
4. Codex Setup -> `AGENTS.md`, `.mcp.json`, `.codex/commands/`
Template: `./references/deliverable-templates/codex-setup.md`

### Phase 4: Marketing and Pitch Materials (Optional)

After core documentation is complete, ask once:

"All MVP foundation documents are complete. Would you like me to create investor pitch materials or a marketing plan next?"

Then proceed to the SDD handoff regardless of the answer.

### Phase 5: Handoff to SDD

After all deliverables are approved, always suggest:

"Your MVP foundation is ready. The natural next step is to initialize Spec-Driven Development and convert these documents into feature specs, task breakdowns, and implementation prompts. Start with: Initialize SDD using the MVP documents we created."

## Technical Stack (Non-Negotiable)

All projects use this Rails stack.

| Component | Choice |
|-----------|--------|
| Framework | Rails 8.x |
| Frontend | Hotwire (Turbo + Stimulus) |
| CSS | Tailwind CSS 4 |
| Components | maquina_components |
| Database | SQLite (dev) / PostgreSQL (prod) |
| Auth | Rails 8 built-in |
| Testing | Minitest + Fixtures |
| Deployment | Kamal 2 |

### Architecture Patterns

- Rich domain models with concerns (no service objects)
- CRUD resources for everything (no custom actions)
- State as records, not booleans
- Money as integer cents
- Turbo Morph by default, Frames sparingly

Use `./references/rails-implementation-patterns.md` for detailed implementation patterns.

## Discovery Question Templates

### Core Questions (Always Ask First)

```
I'd like to learn more about your app idea to create comprehensive documentation.

1. App Name: Do you have a name in mind? If it has meaning in another language, what does it mean?
2. Core Problem: In one sentence, what problem does this app solve?
3. Target Users: Who is the primary user? (demographics, behaviors, pain points)
4. Region: Any geographic focus? (affects language, payment methods, API availability)
5. Differentiator: What makes this different from existing solutions?
```

### Feature Questions (After Research Review)

```
Based on my research, I have some feature questions:

1. Main Sections: What are the primary app sections/tabs?
2. Critical Flow: What's the ONE action that must be fast and frictionless?
3. Data Model: What are the main things users create/track?
```

### Brand Questions (Before Brand Guide)

```
Before I create the brand guide:

1. Personality: How should the app feel?
2. Colors: Any preferences or should I propose a palette?
3. Logo: Want 2-3 SVG logo concepts based on the core idea?
```

## Logo Generation

Logos are generated as SVG code inline in the Brand Guide.

1. Describe the visual metaphor first.
2. Use simple geometric forms.
3. Provide primary logo and standalone icon.
4. Ensure single-color legibility.

## Quality Checklist

### Research Report

- [ ] 2-5 competitors analyzed
- [ ] Feature comparison matrix included
- [ ] Differentiation opportunities identified
- [ ] Sources cited

### MVP Business Plan

- [ ] Clear problem statement
- [ ] User personas defined
- [ ] Feature set organized by section
- [ ] User flows documented
- [ ] Success metrics defined

### Brand Guide

- [ ] Logo SVG code included (primary + icon)
- [ ] Full color palette with hex values
- [ ] Typography scale defined
- [ ] Component patterns documented
- [ ] Tailwind CSS @theme configuration included

### Technical Guide

- [ ] Tech stack decisions documented
- [ ] File organization defined
- [ ] Data models with relationships
- [ ] Turbo patterns specified
- [ ] I18n strategy with file structure
- [ ] Anti-patterns listed

### Codex Setup

- [ ] AGENTS.md with project context and coding rules
- [ ] .mcp.json configured for local tools/servers used by the project
- [ ] .codex/commands/ includes reusable command prompts
- [ ] Setup and usage instructions included

## Output File Structure

```
[project_name]/
├── docs/
│   ├── RESEARCH_REPORT.md
│   ├── MVP_BUSINESS_PLAN.md
│   ├── BRAND_GUIDE.md
│   ├── TECHNICAL_GUIDE.md
│   └── assets/
│       ├── logo.svg
│       └── logo-icon.svg
├── AGENTS.md
├── .mcp.json
└── .codex/
    └── commands/
        ├── test.md
        ├── db.md
        ├── analyze.md
        ├── generate.md
        └── guide.md
```

## Tips

1. Research first.
2. Ask before assuming.
3. Generate one deliverable at a time with approval gates.
4. Use concrete examples from the user's domain.
5. Keep outputs in English unless user requests otherwise.
