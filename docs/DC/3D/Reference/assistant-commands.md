---
title: Tessa commands and runtime
diataxis: reference
tags: [reference, tessa, commands, memory, energy]
---

# Tessa commands and runtime

This page documents the slash commands Tessa accepts, the three-layer memory model, the energy system, and the per-plan query limits.

## Slash commands

| Command | Effect |
|---------|--------|
| `/mute` | Disable voice output |
| `/unmute` | Enable voice output |
| `/voice` | Toggle voice on/off |
| `/voice on` | Enable voice mode |
| `/voice off` | Disable voice mode |
| `/hat <name>` | Wear a specific hat (coder, architect, researcher, reviewer, security) |
| `/hat list` | List available hats |
| `/hat off` | Remove current hat |
| `/image <path>` | Analyze an image file |
| `/paste` | Analyze image from clipboard |
| `/clear` | Clear conversation history |
| `/sessions` | List previous sessions |
| `/session new` | Start a new session |
| `/session restore <N>` | Restore a previous session |
| `quit` / `exit` | Exit the assistant |

## Memory

Tessa's memory persists across sessions in three layers.

| Layer | Scope | Persisted |
|-------|-------|-----------|
| **Session** | Current conversation | Until you exit |
| **Workspace** | Current project/Grid | Across sessions (saved to workspace) |
| **User** | All workspaces | Across sessions and projects |

### Memory commands

These are natural-language prompts, not slash commands:

```
"Remember that auth-service uses PostgreSQL 15"
"What do you remember about auth-service?"
"Forget everything about the old API"
"What am I working on?"
```

Tessa decides whether a fact belongs in Session, Workspace, or User memory based on context. You can also ask explicitly: "Remember this at the workspace level."

### Memory actions

The memory tool supports twelve actions. Tessa selects them from what you ask; you don't type the action names.

| Action | What It Does |
|--------|--------------|
| `remember` | Store a fact (scope: session, workspace, or user) |
| `recall` | Search stored facts by topic |
| `list` | Show all stored facts |
| `forget` | Remove facts matching a topic |
| `track` | Set the current task you're working on |
| `status` | Show what you're currently working on |
| `update` | Record progress on the current task |
| `done` | Mark the current task complete |
| `audit` | Review user-memory access history |
| `export` | Export stored user-memory facts |
| `set-language` | Set Tessa's preferred response language |
| `clear` | Clear facts (alias of `forget`) |

## Energy system

Tessa runs on an energy system. Paid plans move between two states as you use her through each window.

| State | Behavior |
|-------|----------|
| **Optimal** | Your full subscription quality, full depth of reasoning on hard problems |
| **Conserving** | A lighter, faster model. Every capability still works, simpler responses on complex tasks |

Both states run every Tessa capability. Energy changes how deeply Tessa reasons on hard problems, not which skills she can use; it never restricts which operations you can run.

Paid plans always keep a working assistant: when a window's budget is spent they floor at Conserving and are never blocked. Start-tier (free) users are different: when a free user's window budget is spent, the assistant enters a third state, **Replenishing**, and serves no responses until the next window opens, with a live recharge countdown shown.

The remaining energy is visible in the **Energy Bar** in the chat panel. Energy refills on a rolling window, and Tessa tells you when she is back to full.

## Query limits by plan

| Plan | Per 6-hour window (enforced) | Daily total (informational) |
|------|------------------------------|-----------------------------|
| **Start** | ~1 query | 7 |
| **Visualize** | ~8 queries | 35 |
| **Analyze** | Unlimited | Unlimited |
| **Fuse** | Unlimited | Unlimited |

Limits are enforced in 6-hour rolling windows, not as a single daily pool: the daily total is divided across four windows. When a window's budget is spent, energy refills as the next window opens. The window budget is measured in tokens, so the query counts above are approximate: a few large requests consume a window faster than several small ones. Your account energy panel shows the exact remaining budget.

These figures apply to Grid subscriptions (Start, Visualize, Analyze, Fuse). Personal subscriptions are a separate axis: they carry energy levels (E1, E5, E15) measured in monthly token allotments rather than per-window query caps. Your account energy panel shows the active limit for either.

## Related

- **For concept and design:** see [Tessa - Your AI Assistant](../Overview/ai-assistant.md).
- **For the tools Tessa uses:** see [Tessa tools](assistant-tools.md).
- **For the hat catalog:** see [Tessa hats](assistant-hats.md).
- **For the skill catalog:** see [Tessa skills](assistant-skills.md).
