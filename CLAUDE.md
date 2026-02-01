# Antigravity Awesome Skills - Auto-Activation Configuration

This repository contains 255+ production-ready agentic skills. Skills are automatically activated based on your task.

## Automatic Skill Activation

When the user asks for any task, ALWAYS:
1. Analyze the task to identify which skill(s) apply
2. Read the relevant SKILL.md file from `skills/<skill-name>/SKILL.md`
3. Follow the instructions in that skill to complete the task
4. Use multiple skills together when the task spans domains

## Skill Mapping by Task Type

### Planning & Strategy
| Task Keywords | Skill to Use |
|---------------|--------------|
| "plan", "brainstorm", "idea" | `skills/brainstorming/SKILL.md` |
| "checklist", "todo", "steps" | `skills/concise-planning/SKILL.md` |
| "product requirements", "PRD" | `skills/product-requirements-doc/SKILL.md` |
| "competitor", "market analysis" | `skills/competitor-analysis/SKILL.md` |

### Development & Coding
| Task Keywords | Skill to Use |
|---------------|--------------|
| "debug", "fix bug", "error" | `skills/systematic-debugging/SKILL.md` |
| "test", "TDD", "write tests" | `skills/tdd-workflow/SKILL.md` |
| "refactor", "clean code" | `skills/clean-code/SKILL.md` |
| "React", "component" | `skills/react-patterns/SKILL.md` |
| "Next.js", "app router" | `skills/nextjs-best-practices/SKILL.md` |
| "TypeScript", "types" | `skills/typescript-expert/SKILL.md` |
| "Python" | `skills/python-patterns/SKILL.md` |
| "API", "backend" | `skills/backend-dev-guidelines/SKILL.md` |
| "database", "schema" | `skills/database-design/SKILL.md` |

### Frontend & Design
| Task Keywords | Skill to Use |
|---------------|--------------|
| "UI", "design", "layout" | `skills/frontend-design/SKILL.md` |
| "Tailwind", "CSS" | `skills/tailwind-patterns/SKILL.md` |
| "form", "input" | `skills/form-cro/SKILL.md` |
| "animation", "3D", "Three.js" | `skills/3d-web-experience/SKILL.md` |
| "visualization", "chart", "D3" | `skills/d3-viz/SKILL.md` |

### Security & Pentesting
| Task Keywords | Skill to Use |
|---------------|--------------|
| "security", "pentest", "hack" | `skills/ethical-hacking-methodology/SKILL.md` |
| "vulnerability", "scan" | `skills/burp-suite-testing/SKILL.md` |
| "SQL injection", "SQLi" | `skills/sql-injection-testing/SKILL.md` |
| "privilege escalation", "privesc" | `skills/linux-privilege-escalation/SKILL.md` |
| "OWASP", "web security" | `skills/owasp-top-10/SKILL.md` |
| "cloud security", "AWS security" | `skills/cloud-penetration-testing/SKILL.md` |

### AI & Agents
| Task Keywords | Skill to Use |
|---------------|--------------|
| "LangGraph", "agent workflow" | `skills/langgraph/SKILL.md` |
| "CrewAI", "multi-agent" | `skills/crewai/SKILL.md` |
| "MCP", "tool server" | `skills/mcp-builder/SKILL.md` |
| "prompt", "prompt engineering" | `skills/prompt-engineer/SKILL.md` |
| "RAG", "retrieval" | `skills/rag-engineer/SKILL.md` |

### DevOps & Infrastructure
| Task Keywords | Skill to Use |
|---------------|--------------|
| "Docker", "container" | `skills/docker-expert/SKILL.md` |
| "deploy", "production" | `skills/deployment-procedures/SKILL.md` |
| "AWS", "Lambda", "serverless" | `skills/aws-serverless/SKILL.md` |
| "GCP", "Cloud Run" | `skills/gcp-cloud-run/SKILL.md` |
| "git", "commit", "push" | `skills/git-pushing/SKILL.md` |
| "CI/CD", "GitHub Actions" | `skills/github-workflow-automation/SKILL.md` |

### Marketing & Growth
| Task Keywords | Skill to Use |
|---------------|--------------|
| "landing page", "conversion" | `skills/page-cro/SKILL.md` |
| "copy", "writing", "headline" | `skills/copywriting/SKILL.md` |
| "SEO", "search ranking" | `skills/seo-audit/SKILL.md` |
| "email", "newsletter" | `skills/email-sequence/SKILL.md` |
| "ads", "paid media" | `skills/paid-ads/SKILL.md` |

### Integrations
| Task Keywords | Skill to Use |
|---------------|--------------|
| "Stripe", "payment" | `skills/stripe-integration/SKILL.md` |
| "Firebase" | `skills/firebase/SKILL.md` |
| "Supabase" | `skills/supabase/SKILL.md` |
| "Clerk", "auth" | `skills/clerk-auth/SKILL.md` |
| "Twilio", "SMS" | `skills/twilio-communications/SKILL.md` |

### Maker & Builder
| Task Keywords | Skill to Use |
|---------------|--------------|
| "SaaS", "micro-saas" | `skills/micro-saas-launcher/SKILL.md` |
| "browser extension", "Chrome" | `skills/browser-extension-builder/SKILL.md` |
| "Telegram bot" | `skills/telegram-bot-builder/SKILL.md` |
| "pitch deck" | `skills/pitch-deck-creator/SKILL.md` |

## How to Use Skills

When you receive a task:

1. **Match the task** to one or more skills from the tables above
2. **Read the skill file**: `Read skills/<skill-name>/SKILL.md`
3. **Follow the skill instructions** exactly as written
4. **Check for scripts**: If the skill has a `scripts/` folder, use those tools
5. **Load references**: If more detail needed, check `references/` folder

## Multi-Skill Workflows

For complex tasks, combine skills:

- **Build a feature**: `concise-planning` → `tdd-workflow` → `clean-code` → `git-pushing`
- **Security audit**: `ethical-hacking-methodology` → `burp-suite-testing` → `owasp-top-10`
- **Launch product**: `product-requirements-doc` → `frontend-design` → `stripe-integration` → `deployment-procedures`

## Always Apply These Skills

For every task, consider these foundational skills:
- `skills/lint-and-validate/SKILL.md` - Keep code clean
- `skills/verification-before-completion/SKILL.md` - Verify work before claiming done
- `skills/git-pushing/SKILL.md` - Save work properly

## Skill Discovery

To find all available skills:
```bash
ls skills/
```

To search for a specific capability:
```bash
grep -r "keyword" skills/*/SKILL.md
```

Full skill index: `skills_index.json`
