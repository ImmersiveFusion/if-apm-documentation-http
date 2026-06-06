---
title: Tessa hats
diataxis: reference
tags: [reference, tessa, hats]
---

# Tessa hats

This page documents the hats Tessa can wear and the `/hat` commands that switch between them.

## Hat catalog

| Hat | Role | When to Use |
|-----|------|-------------|
| **Coder** | Pair programmer | Writing and fixing code, small increments, self-review |
| **Architect** | System designer | Design patterns, scalability, tradeoff analysis |
| **Researcher** | Research partner | Systematic exploration, source evaluation, synthesis |
| **Reviewer** | Code reviewer | Quality standards, design patterns, security, testing |
| **Security** | Security analyst | OWASP Top 10, threat modeling, attack surface analysis |

## Hat commands

| Command | Effect |
|---------|--------|
| `/hat <name>` | Wear a specific hat (coder, architect, researcher, reviewer, security) |
| `/hat list` | List available hats |
| `/hat off` | Remove current hat |

## Notes

- You don't have to specify a hat; Tessa picks one based on context.
- Putting on a hat with `/hat` overrides Tessa's automatic selection until you remove it with `/hat off`.
- Hats change *how* Tessa thinks. Skills change *who* she calls in. See [Tessa skills](assistant-skills.md) for the routing layer.

## Related

- **For concept and design:** see [Tessa - Your AI Assistant](../Overview/ai-assistant.md).
- **For the tools Tessa uses:** see [Tessa tools](assistant-tools.md).
- **For commands and runtime behavior:** see [Tessa commands and runtime](assistant-commands.md).
