# Tessa - Your AI Assistant

> **Not another chatbot.** Tessa is a purpose-built AI assistant with live access to your telemetry data, your codebase, and a suite of 14 core tools. She doesn't guess - she queries your Grid, reads your code, and tells you exactly what's wrong.

## What Makes Tessa Different

Every APM tool has dashboards. Only IAPM has an AI assistant that can navigate your 3D environment, query live telemetry, read and edit your source code, search the web, spawn specialized sub-agents, and remember context across sessions.

Tessa has **14 core tools**, **6 skill domains** with 30+ specialized agents, and a **hat system** that adapts her behavior to your current task. On Analyze+ plans, she can fix code directly in your workspace.

**Available across all IAPM surfaces:**

| Surface | Version | How to Access |
|---------|---------|---------------|
| [IAPM 3D](../index.md) | v1.9+ | Chat panel or voice - speak directly to Tessa |
| [IAPM Web](../../Web/index.md) | v3.90+ | Chat widget in the portal |
| [IAPM Studio](../../Studio/index.md) | v0.1+ | Integrated chat with multi-tab and split pane |

## Core Tools

Tessa has 14 built-in tools she can use autonomously during conversations:

| Tool | What It Does |
|------|-------------|
| **Read** | Read files from your workspace |
| **Write** | Create new files |
| **Edit** | Make targeted edits to existing files |
| **Glob** | Find files by pattern |
| **Grep** | Search file contents with regex |
| **LS** | List directory contents |
| **Workspace** | Switch between workspaces |
| **Memory** | Remember and recall facts across sessions |
| **Voice** | Change voice, list available voices, preview samples |
| **Task** | Spawn sub-agents for parallel or complex work |
| **WebSearch** | Search the web for information |
| **WebFetch** | Fetch and analyze web pages |
| **Time** | Current date and time queries |
| **Feedback** | Submit feedback about Tessa |

When connected to a Grid, Tessa also has access to **diagnostics tools** via the Cloud Brain - health checks, root cause analysis, pressure detection, service maps, and more. See [Diagnostics](Tessa/diagnostics.md).

## Hats

Tessa can wear different "hats" that change how she approaches problems:

| Hat | Role | When to Use |
|-----|------|-------------|
| **Coder** | Pair programmer | Writing and fixing code, small increments, self-review |
| **Architect** | System designer | Design patterns, scalability, tradeoff analysis |
| **Researcher** | Research partner | Systematic exploration, source evaluation, synthesis |
| **Reviewer** | Code reviewer | Quality standards, design patterns, security, testing |
| **Security** | Security analyst | OWASP Top 10, threat modeling, attack surface analysis |

Switch hats with the `/hat` command:

```
/hat coder        # Wear the coder hat
/hat architect    # Switch to architect mode
/hat list         # See all available hats
/hat off          # Remove current hat
```

## Skills

Tessa has 6 specialized skill domains, each with multiple agents that can be routed automatically based on your request:

| Skill | Purpose |
|-------|---------|
| **Problem-Solving** | Systematic problem decomposition, research, analysis, synthesis |
| **Engineering Team** | Architecture, backend, frontend, DevSecOps, QA, security review |
| **Red Team** | Offensive security, penetration testing methodology |
| **Adversary** | Adversarial quality reviews and scoring |
| **NASA SE** | Systems engineering processes (NPR 7123.1D) |
| **Prompt Engineering** | Structured prompt construction and quality validation |

Skills are routed automatically - just describe what you need and Tessa selects the right skill and agents. See [Skills](Tessa/skills.md).

## Commands

| Command | Effect |
|---------|--------|
| `/mute` | Disable voice output |
| `/unmute` | Enable voice output |
| `/voice` | Toggle voice on/off |
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

Tessa has a three-layer memory system that persists across sessions:

| Layer | Scope | Persisted |
|-------|-------|-----------|
| **Session** | Current conversation | Until you exit |
| **Workspace** | Current project/Grid | Across sessions (saved to workspace) |
| **User** | All workspaces | Across sessions and projects |

Tessa can remember facts, track your current task, and recall context from previous conversations. Memory commands:

```
"Remember that auth-service uses PostgreSQL 15"
"What do you remember about auth-service?"
"Forget everything about the old API"
"What am I working on?"
```

## Energy System

Tessa runs on a three-state energy system:

| State | Behavior |
|-------|----------|
| **Rested** | Full capabilities, bonus context available, complex tasks encouraged |
| **Normal** | Standard capabilities (default state) |
| **Exhausted** | Voice-only responses, no analysis - recharges automatically |

Daily query limits by plan:

| Plan | Daily Queries |
|------|---------------|
| **Start** | 7/day |
| **Visualize** | 35/day |
| **Analyze** | Unlimited |
| **Fuse** | Unlimited |

Your remaining energy is visible in the **Energy Bar** in the chat panel. When exhausted, Tessa will tell you when she'll be ready again.

## Getting Started

1. Open the chat panel in any IAPM surface
2. Type a question or click the microphone to speak
3. Try: "How is my system doing right now?"
4. Follow up naturally - Tessa remembers conversation context

!!! tip "Context-aware in 3D"
    In the 3D environment, Tessa knows which room you're in and which service you're looking at. Ask "What's wrong here?" and she'll know what you mean.

## Learn More

<div class="grid cards" markdown>

-   **[Diagnostics](Tessa/diagnostics.md)**

    ---

    Health checks, root cause analysis, pressure detection, service maps, trend analysis, and more - all queried against your live Grid data.

-   **[Skills](Tessa/skills.md)**

    ---

    6 skill domains with 30+ specialized agents for problem-solving, engineering, security, and more.

-   **[Voice Interaction](Tessa/voice.md)**

    ---

    Hands-free troubleshooting with speech recognition and synthesis - ideal for VR headset users.

-   **[Multimodal Vision](Tessa/vision.md)**

    ---

    Paste screenshots or load images for Tessa to analyze alongside your telemetry data.

-   **[Prompt Guide](Tessa/prompts.md)**

    ---

    30+ example prompts organized by category, plus tips for getting the best results from Tessa.

</div>
