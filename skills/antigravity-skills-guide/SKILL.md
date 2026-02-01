---
name: antigravity-skills-guide
description: Master guide for using all 255+ Antigravity Awesome Skills. Use when you need to discover, invoke, or combine skills for development, security, AI/ML, marketing, and autonomous operations. Activate with "what skills are available", "help me find a skill", or "how do I use skills".
risk: safe
source: community
---

# Antigravity Awesome Skills Guide

Master reference for discovering and using 255+ production-ready agentic skills.

## When to Use

- You want to discover available skills in this repository
- You need help finding the right skill for a task
- You want to understand skill invocation patterns
- You're looking for curated skill bundles by role
- You want to create new skills

## Quick Start

Invoke any skill using `@skill-name`:

```
@brainstorming help me plan a new SaaS product
@systematic-debugging fix this failing test
@frontend-design create a dashboard UI
@ethical-hacking-methodology assess this web app
```

## Skill Categories

### Autonomous & Agentic (~8 skills)
| Skill | Purpose |
|-------|---------|
| `loki-mode` | Full autonomous startup system |
| `subagent-driven-development` | Execute plans with subagents |
| `dispatching-parallel-agents` | Handle 2+ independent tasks |
| `skill-creator` | Create new skills |
| `multi-agent-brainstorming` | Structured multi-agent design review |

### Development (~33 skills)
| Skill | Purpose |
|-------|---------|
| `systematic-debugging` | Methodical bug investigation |
| `tdd-workflow` | RED-GREEN-REFACTOR cycle |
| `test-fixing` | Fix failing tests systematically |
| `clean-code` | Pragmatic coding standards |
| `react-patterns` | Modern React best practices |
| `nextjs-best-practices` | Next.js App Router principles |
| `typescript-expert` | TypeScript patterns and types |
| `python-patterns` | Idiomatic Python code |
| `backend-dev-guidelines` | Backend architecture patterns |

### Cybersecurity (~51 skills)
| Skill | Purpose |
|-------|---------|
| `ethical-hacking-methodology` | Pentest lifecycle |
| `burp-suite-testing` | Web vulnerability scanning |
| `sql-injection-testing` | SQLi detection/exploitation |
| `linux-privilege-escalation` | Linux privesc techniques |
| `owasp-top-10` | Common vulnerability checks |
| `cloud-penetration-testing` | AWS/Azure/GCP security |
| `active-directory-attacks` | AD security assessment |

### AI Agents & LLM (~31 skills)
| Skill | Purpose |
|-------|---------|
| `langgraph` | Stateful multi-actor AI apps |
| `crewai` | Role-based multi-agent framework |
| `mcp-builder` | Create MCP servers for LLM tools |
| `prompt-engineer` | Effective prompt design |
| `rag-engineer` | Retrieval-augmented generation |
| `agent-memory-systems` | Agent memory patterns |
| `agent-evaluation` | Test and evaluate agents |

### Integrations & APIs (~25 skills)
| Skill | Purpose |
|-------|---------|
| `stripe-integration` | Payment processing |
| `firebase` | Firebase backend services |
| `supabase` | Supabase database/auth |
| `clerk-auth` | Authentication with Clerk |
| `twilio-communications` | SMS/voice/video |

### Infrastructure & DevOps (~8 skills)
| Skill | Purpose |
|-------|---------|
| `docker-expert` | Containerization |
| `aws-serverless` | Lambda, API Gateway, DynamoDB |
| `gcp-cloud-run` | Cloud Run services |
| `deployment-procedures` | Safe deployment workflows |
| `git-pushing` | Git workflow best practices |

### Creative & Design (~10 skills)
| Skill | Purpose |
|-------|---------|
| `ui-ux-pro-max` | Premium design systems |
| `frontend-design` | UI guidelines and aesthetics |
| `canvas-design` | Generate posters/diagrams |
| `algorithmic-art` | Code-generated art |
| `d3-viz` | D3.js visualizations |

### Marketing & Growth (~23 skills)
| Skill | Purpose |
|-------|---------|
| `page-cro` | Conversion rate optimization |
| `copywriting` | Persuasive copy |
| `seo-audit` | Search engine optimization |
| `paid-ads` | Paid advertising campaigns |
| `email-sequence` | Email marketing flows |

### Maker Tools (~11 skills)
| Skill | Purpose |
|-------|---------|
| `micro-saas-launcher` | Launch micro-SaaS products |
| `browser-extension-builder` | Chrome/Firefox extensions |
| `telegram-bot-builder` | Telegram bot development |

## Starter Packs

### Essentials (Everyone)
```
@concise-planning @lint-and-validate @git-pushing @verification-before-completion
```

### Web Development
```
@frontend-design @react-patterns @tailwind-patterns @nextjs-best-practices
```

### Security Engineering
```
@ethical-hacking-methodology @burp-suite-testing @sql-injection-testing @linux-privilege-escalation
```

### AI Agent Development
```
@langgraph @crewai @mcp-builder @prompt-engineer
```

### DevOps & Cloud
```
@docker-expert @aws-serverless @gcp-cloud-run @deployment-procedures
```

### Startup Founder
```
@product-requirements-doc @competitor-analysis @pitch-deck-creator @stripe-integration
```

## Invocation Patterns

### Direct Invocation
```
@skill-name [task description]
```

### Contextual Activation
Skills auto-activate based on keywords:
- "debug" / "fix bug" → `systematic-debugging`
- "write tests" / "TDD" → `tdd-workflow`
- "deploy" / "production" → `deployment-procedures`
- "security" / "pentest" → `ethical-hacking-methodology`

### Multi-Skill Workflows
```
# Plan then execute
@concise-planning create a user authentication system
@executing-plans implement the authentication plan

# Debug with verification
@systematic-debugging investigate the login failure
@verification-before-completion confirm the fix works
```

## Creating New Skills

Use the `skill-creator` skill:

```bash
# Initialize a new skill
python3 skills/skill-creator/scripts/init_skill.py <skill-name> --path skills/

# Package for distribution
python3 skills/skill-creator/scripts/package_skill.py skills/<skill-name>
```

### Skill Structure
```
skill-name/
├── SKILL.md          # Required - main definition
├── scripts/          # Optional - executable code
├── references/       # Optional - detailed docs
└── assets/           # Optional - templates
```

### Quality Requirements
1. Valid YAML frontmatter with `name` and `description`
2. `description` must include "when to use" context
3. At least one copy-paste example
4. Concrete actions, not vague thoughts
5. Risk labels for offensive/security skills

## Validation

```bash
# Validate all skills
python3 scripts/validate_skills.py

# Strict mode (CI)
python3 scripts/validate_skills.py --strict

# Regenerate index
python3 scripts/generate_index.py
```

## Key Files

| File | Purpose |
|------|---------|
| `skills_index.json` | Generated index of all skills |
| `docs/BUNDLES.md` | Starter packs by role |
| `docs/SKILL_ANATOMY.md` | Skill structure guide |
| `docs/QUALITY_BAR.md` | V3 quality standards |

## Finding Skills

1. **By name**: `@skill-name` if you know it
2. **By category**: Check tables above
3. **By bundle**: Use starter packs for your role
4. **By search**: `grep -r "keyword" skills/*/SKILL.md`
