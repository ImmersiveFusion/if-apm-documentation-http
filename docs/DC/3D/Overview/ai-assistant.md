---
title: Tessa - Your AI Assistant
diataxis: explanation
tags: [explanation, tessa, ai-assistant]
---

# Tessa - Your AI Assistant

This page explains what Tessa is, what makes her different from a generic chatbot, and the conceptual model behind her tools, hats, skills, memory, and energy.

> **Not another chatbot.** Tessa is a purpose-built AI assistant with live access to your telemetry data, your codebase, and a suite of built-in tools. She doesn't guess - she queries your Grid, reads your code, and tells you exactly what's wrong.

## What makes Tessa different

Every APM tool has dashboards. Only IAPM has an AI assistant that can navigate your 3D environment, query live telemetry, read and edit your source code, search the web, spawn specialized sub-agents, and remember context across sessions.

Tessa is available across all IAPM surfaces:

- **[IAPM 3D](../index.md)** (v1.9+) - Chat panel or voice, speak directly to Tessa
- **[IAPM Web](../../Web/index.md)** (v3.90+) - Chat widget in the portal
- **[IAPM Studio](../../Studio/index.md)** (v0.1+) - Integrated chat with multi-tab and split pane

Workspaces, conversation history, and Tessa's memory are stored locally on disk; multiple surfaces on the same machine share access through that storage.

## How Tessa thinks: the conceptual model

Tessa is built around four ideas that combine to shape her behavior.

### Tools

Tessa has a fixed set of built-in tools she uses autonomously during a conversation. Tools cover file reading and editing, web search and fetch, voice control, memory, and spawning sub-agents. When connected to a Grid, she also has access to diagnostic tools for live telemetry analysis.

The tools are the *capabilities*. Tessa picks which to use based on what you ask. For the full lookup, see [Tessa tools](../Reference/assistant-tools.md).

### Hats

A **hat** is a lens Tessa wears that changes how she approaches a problem. The Coder hat focuses on small, reviewed code increments. The Architect hat focuses on system design and trade-offs. The Researcher, Reviewer, and Security hats each shape her responses to fit that domain.

You don't have to specify a hat; Tessa picks based on context. But you can put a specific hat on with the `/hat` command when you want to steer her behavior explicitly. For the full hat catalog and command reference, see [Tessa hats](../Reference/assistant-hats.md).

### Skills

A **skill** is a specialist team Tessa can route to. Where hats change *how* Tessa thinks, skills change *who* she calls in. The Problem-Solving skill has agents for research, analysis, architecture decisions, validation, synthesis, and reviews. The Engineering Team skill has agents for backend, frontend, DevSecOps, QA, and security. Other skills cover offensive security, adversarial quality review, systems engineering, and prompt engineering.

You don't invoke skills by name. Describe what you need ("review this code for security issues") and Tessa routes to the right skill and the right agents automatically. Skills are available in IAPM 3D and Studio; Web integration is not yet shipped. For the full catalog, see [Tessa skills](../Reference/assistant-skills.md).

### Memory

Tessa remembers in three layers. **Session** memory lasts for the current conversation. **Workspace** memory lasts across conversations within a project or Grid. **User** memory lasts across all your workspaces.

Memory is persistent on disk. What Tessa learns in one conversation can surface in the next, which is what makes long-running investigations feel coherent. The persistence model also has confidentiality implications worth understanding before you put sensitive material in front of her. For the layer reference and memory commands, see [Tessa commands and runtime](../Reference/assistant-commands.md).

### Energy

Tessa runs on an energy system. You start each window at **Optimal** (your full subscription quality, full depth of reasoning on hard problems) and drop to **Conserving** (a lighter, faster model) when the window's budget is spent. Every capability still works in Conserving; energy changes how deeply Tessa reasons on hard problems, not which skills she can use. Paid plans always keep a working assistant; free (Start-tier) users who exhaust a window instead wait for it to refill, with a recharge countdown shown. Energy is visible in the chat panel.

The energy bar is the only thing you see. Token counts, model names, and pool sources are deliberately invisible: one bar, one experience. When energy is low, Tessa tells you when she'll be back to full. For tier-by-plan limits, see [Tessa commands and runtime](../Reference/assistant-commands.md).

## Diagnostics: where Tessa shines

When Tessa is connected to a Grid, she's not just answering questions; she's running real diagnostics against live telemetry. Every response is backed by actual data. She queries traces, logs, and metrics through dedicated tools, often chaining several in a single response: check health, identify the unhealthy service, compare it to yesterday, find the slow traces.

The diagnostic capability is what makes IAPM's AI assistant different from a generic chatbot bolted onto a dashboard. For the full diagnostic catalog and the kinds of questions Tessa can answer, see [Tessa diagnostics](../Reference/assistant-diagnostics.md).

## Getting started

1. Open the chat panel in any IAPM surface.
2. Type a question, or click the microphone to speak.
3. Try: *"How is my system doing right now?"*
4. Follow up naturally. Tessa remembers conversation context.

!!! tip "Context-aware in 3D"
    In the 3D environment, Tessa knows which room you're in and which service you're looking at. Ask "What's wrong here?" and she'll know what you mean.

## Where to next

- **For step-by-step tasks** (voice, image input, prompt patterns): see [How-to guides](../How-to/index.md).
- **For commands, tools, hats, skills, diagnostics tables:** see [Reference](../Reference/index.md).
- **To learn IAPM hands-on:** see [Tutorials](../Tutorials/index.md).
