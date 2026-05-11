# Skills

> *Available since IAPM 3D v1.12, Web v3.131, and Studio v0.7*

Skills are specialized domains that extend Tessa beyond diagnostics. Each skill contains multiple specialized agents that Tessa routes to automatically based on your request.

## Available Skill Domains

| Skill | Agents | What It Does |
|-------|--------|-------------|
| **Problem-Solving** | 9 | Systematic problem decomposition - research, analysis, architecture decisions, validation, synthesis, reviews, investigations, and reporting |
| **Engineering Team** | 10+ | Full engineering workflow - architecture, backend, frontend, DevSecOps, QA, security review, incident response |
| **Red Team** | Variable | Offensive security methodology - reconnaissance, vulnerability analysis, exploitation, lateral movement, reporting |
| **Adversary** | 3 | Adversarial quality reviews - strategy selection, execution against deliverables, LLM-as-Judge scoring |
| **NASA SE** | 10+ | Systems engineering processes per NPR 7123.1D - requirements, verification, risk, reviews, integration, configuration |
| **Prompt Engineering** | Variable | Structured prompt construction, quality validation, constraint generation |

## How Skills Work

You don't invoke skills by name. Describe what you need and Tessa routes to the right skill and agents automatically.

```
"Review this code for security issues"     → Engineering Team (security agent)
"Help me debug why orders are failing"     → Problem-Solving (investigator agent)
"Analyze the architecture of auth-service" → Engineering Team (architect agent)
"What are the risks in this design?"       → NASA SE (risk agent) or Problem-Solving (analyst)
```

Each agent receives a focused brief, works with its own tool permissions, and reports back to Tessa who synthesizes the results for you.

## Multi-Agent Workflows

For complex requests, Tessa can orchestrate multiple agents in sequence or parallel. For example, asking "Do a full security review of my API" might engage:

1. **Engineering architect** - assess the design
2. **Security reviewer** - manual code review
3. **DevSecOps agent** - automated scanning methodology
4. **Engineering reviewer** - final quality gate

Tessa coordinates the workflow and presents consolidated findings.

## Browsing Available Skills

Ask Tessa what she can do:

!!! example "Try asking"
    - "What skills do you have?"
    - "What agents are available?"
    - "Can you do a security review?"

## Skills and Plans

| Plan | Skill Access |
|------|-------------|
| Start | Core diagnostics only |
| Visualize | Standard skill catalog |
| Analyze | Full skill catalog + code analysis |
| Fuse | Full skill catalog + infrastructure analysis |

## Related

- [Diagnostics](diagnostics.md) - Tessa's built-in APM diagnostic tools
- [Prompt Guide](prompts.md) - Example prompts for different skill domains
