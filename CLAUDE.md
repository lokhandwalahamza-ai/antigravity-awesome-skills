# Antigravity Awesome Skills - Claude Code Configuration

This is the official skill library for Claude Code and other AI coding assistants. Contains 255+ production-ready agentic skills spanning development, security, marketing, AI/ML, and autonomous operations.

## Quick Start

Invoke any skill using `@skill-name` in your prompt:

```
@brainstorming help me plan a new SaaS product
@systematic-debugging fix this failing test
@frontend-design create a dashboard UI
```

## Project Structure

```
skills/                     # 255+ skill directories
  skill-name/
    SKILL.md               # Main skill definition (required)
    scripts/               # Executable code (optional)
    references/            # Documentation loaded as needed (optional)
    assets/                # Templates, icons, boilerplate (optional)
scripts/                   # Build and validation tools
  validate_skills.py       # Run: python3 scripts/validate_skills.py
  generate_index.py        # Regenerate skills_index.json
docs/                      # Documentation
  BUNDLES.md              # Starter packs by role
  SKILL_ANATOMY.md        # Skill structure guide
  QUALITY_BAR.md          # V3 quality standards
skills_index.json         # Generated index of all skills
```

## Skill Categories (255 Skills)

| Category | Count | Key Skills |
|----------|-------|------------|
| Autonomous & Agentic | ~8 | loki-mode, subagent-driven-development, dispatching-parallel-agents, skill-creator |
| Integrations & APIs | ~25 | stripe-integration, firebase, supabase, clerk-auth, twilio-communications |
| Cybersecurity | ~51 | ethical-hacking-methodology, burp-suite-testing, sql-injection-testing, linux-privilege-escalation |
| Creative & Design | ~10 | ui-ux-pro-max, frontend-design, canvas-design, algorithmic-art, d3-viz |
| Development | ~33 | systematic-debugging, tdd-workflow, react-patterns, backend-dev-guidelines |
| Infrastructure & Git | ~8 | docker-expert, git-pushing, github-workflow-automation, deployment-procedures |
| AI Agents & LLM | ~31 | langgraph, crewai, rag-engineer, prompt-engineer, agent-memory-systems |
| Marketing & Growth | ~23 | page-cro, copywriting, seo-audit, paid-ads, email-sequence |
| Maker Tools | ~11 | micro-saas-launcher, browser-extension-builder, telegram-bot-builder |

## Starter Packs (Bundles)

### Essentials (Everyone)
- `concise-planning` - Start with a plan
- `lint-and-validate` - Keep code clean
- `git-pushing` - Save work safely
- `verification-before-completion` - Verify before claiming done

### Web Development
- `frontend-design` - UI guidelines and aesthetics
- `react-patterns` - Modern React best practices
- `tailwind-patterns` - Tailwind CSS v4 patterns
- `nextjs-best-practices` - Next.js App Router principles

### Security Engineering
- `ethical-hacking-methodology` - Pentest lifecycle
- `burp-suite-testing` - Web vulnerability scanning
- `sql-injection-testing` - SQLi detection and exploitation
- `linux-privilege-escalation` - Linux privesc techniques

### AI Agent Development
- `langgraph` - Stateful multi-actor AI applications
- `crewai` - Role-based multi-agent framework
- `mcp-builder` - Create MCP servers for LLM tools
- `prompt-engineer` - Effective prompt design

### DevOps & Cloud
- `docker-expert` - Containerization and optimization
- `aws-serverless` - Lambda, API Gateway, DynamoDB
- `gcp-cloud-run` - Cloud Run services and functions
- `deployment-procedures` - Safe deployment workflows

## Key Skills Reference

### Planning & Workflow
- `brainstorming` - Transform ideas into validated designs
- `concise-planning` - Generate clear, actionable checklists
- `writing-plans` - Structured task planning with dependencies
- `executing-plans` - Execute plans with review checkpoints

### Development
- `systematic-debugging` - Methodical bug investigation
- `tdd-workflow` - RED-GREEN-REFACTOR cycle
- `test-fixing` - Fix failing tests systematically
- `clean-code` - Pragmatic coding standards

### Code Quality
- `lint-and-validate` - Automatic linting and static analysis
- `requesting-code-review` - Verify work meets requirements
- `verification-before-completion` - Evidence before assertions

### Multi-Agent Patterns
- `dispatching-parallel-agents` - Handle 2+ independent tasks
- `subagent-driven-development` - Execute plans with subagents
- `multi-agent-brainstorming` - Structured multi-agent design review
- `loki-mode` - Full autonomous startup system

## Development Guidelines

### When Modifying Skills
- Keep SKILL.md under 500 lines
- Use progressive disclosure (references/ for detailed docs)
- Frontmatter `description` is the primary trigger mechanism
- Test scripts before including them

### Validation
```bash
# Soft mode (warnings only)
python3 scripts/validate_skills.py

# Strict mode (for CI)
python3 scripts/validate_skills.py --strict
```

### Creating New Skills
```bash
# Initialize a new skill
python3 skills/skill-creator/scripts/init_skill.py <skill-name> --path skills/

# Package for distribution
python3 skills/skill-creator/scripts/package_skill.py skills/<skill-name>
```

## Skill Invocation Patterns

### Direct Invocation
```
@skill-name [task description]
```

### Contextual Activation
Skills auto-activate based on keywords in their description field. Example triggers:
- "debug" / "fix bug" -> systematic-debugging
- "write tests" / "TDD" -> tdd-workflow
- "deploy" / "production" -> deployment-procedures
- "security" / "pentest" -> ethical-hacking-methodology

### Multi-Skill Workflows
```
# Plan first, then execute
@concise-planning create a user authentication system
@executing-plans implement the authentication plan

# Debug with verification
@systematic-debugging investigate the login failure
@verification-before-completion confirm the fix works
```

## Quality Standards (V3)

All skills must pass:
1. Metadata correctness (valid YAML frontmatter)
2. Safety (risk labels for offensive skills)
3. Clarity ("When to use" in description)
4. Examples (at least one copy-paste example)
5. Actions (concrete steps, not vague thoughts)

## Common Operations

### Run Tests
```bash
# Validate all skills
python3 scripts/validate_skills.py

# Generate index
python3 scripts/generate_index.py

# Update README registry
python3 scripts/update_readme.py
```

### Git Workflow
```bash
# Stage and commit
git add skills/<skill-name>/
git commit -m "feat: add <skill-name> skill"

# Push changes
git push origin main
```

## Research Foundation

Built on patterns from:
- **Anthropic**: Claude Code Best Practices, Constitutional AI
- **OpenAI**: Agents SDK, AGENTS.md standards
- **Google DeepMind**: SIMA 2, Gemini Robotics
- **Academic**: CONSENSAGENT, GoalAct, Multi-Agent Reflexion

## File Organization

### Core Files
- `README.md` - Public documentation (95KB)
- `CLAUDE.md` - This file (agent configuration)
- `skills_index.json` - Generated skill metadata
- `CONTRIBUTING.md` - Contribution guidelines
- `GETTING_STARTED.md` - Quick start guide

### Official Skills (Symlinked)
Document processing skills from anthropics/skills:
- `skills/docx-official/` - DOCX manipulation
- `skills/pdf-official/` - PDF processing
- `skills/pptx-official/` - PowerPoint creation
- `skills/xlsx-official/` - Excel/spreadsheet operations

## Support

- Issues: https://github.com/sickn33/antigravity-awesome-skills/issues
- Community Guidelines: docs/COMMUNITY_GUIDELINES.md
- Security Policy: docs/SECURITY_GUARDRAILS.md
