---
title: Readouts and boards
diataxis: reference
tags: [reference, readouts, boards, graph-root, service-platform, tooltips]
---

# Readouts and boards

This page documents the readouts and summary boards you see at each scope in a grid: the header, the graph root, and an individual service platform.

## Header readouts (persistent)

The header runs across the top of the screen.

| Readout | Position | Meaning |
|---------|----------|---------|
| Grid name | Top center | The current grid (for example `DEMO-TRACEGEN-PHANTOM-EASTUS-PROD`) |
| Current location | Top center, directly beneath the grid name | Where you are right now (for example "Portal Room"). This is your "where am I" readout |
| **% Optimal** | Top left | Tessa's energy state. Not system health. See [Tessa commands and runtime](assistant-commands.md#energy-system) for the energy-state ladder |
| XP (e.g. "0 / 10000") | Top left, below % Optimal | Cosmetic experience accumulated from using the app. Unfinished |
| Roaming ON/OFF | Top right | Toggles Mosey autopilot / AFK mode |
| Pro Tips ON/OFF | Top right | Toggles placards on or off globally |
| Clock | Top right | Current time |
| Play/pause | Top center, below the location | Transport control; see [Navigation model](navigation-model.md#play-pause-transport) |

## Graph root boards (whole-grid scope)

Entered via the SW portal from the Core, or by teleporting down to the graph. These boards describe the entire grid, not any single service.

### Recent Errors

| Column | Description |
|--------|-------------|
| Service | Service that produced the error |
| Instance | Instance identifier |
| Time | Timestamp |
| Operation | The operation that errored |
| Duration | How long the operation took |

### Services

| Column | Description |
|--------|-------------|
| Service | Service name |
| Instance | Instance identifier |
| Status | Red "Error" or green "Active" |
| Ops | Operation count |
| Last Activity | Time since last activity |
| Connections | Connection count |

### Dependencies

| Column | Description |
|--------|-------------|
| Dependency | Dependency name |
| Type | The dependency's type. "Phantom" is a first-class Type value: an expected dependency inferred from callers but not itself instrumented and not reporting |
| Status | Health status |
| Ops | Operation count |
| Last Activity | Time since last activity |

Services are instrumented and emit telemetry directly. Dependencies are known indirectly, from the telemetry of the services that call them. See [Rendering absence](../Overview/rendering-absence.md) for why absence is rendered this way.

### LLM Costs

| Column | Description |
|--------|-------------|
| Service | Service name |
| Cost 60s | Cost over the last 60 seconds |
| Cost/s | Cost per second |
| Tokens 60s | Tokens consumed over the last 60 seconds |
| Input/Output | Input vs. output token split |

## Service platform boards (single-service scope)

Reached by teleporting to a service node, either by line of sight or by clicking its row on a graph-root board. These boards are scoped to the one service you are standing on.

| Board | Columns / content |
|-------|--------------------|
| Recent Errors | This service's error feed |
| Recent Logs | This service's log lines |
| Calling Services | Inbound callers of this service, with status, ops, and last activity |
| LLM Cost | Usage / Input Tokens / Output Tokens / Cost / Cost/s, for this service |

The platform's neon (edge lighting) is red or green for the health of the service you are standing on. See [Color legend](color-legend.md#service-platform-neon).

Tessa's conversational context locks to the service platform you are standing on.

## Tooltips

Most objects, platforms, and cubes carry a hover tooltip giving basic information about what they are. Hover an object to see its tooltip, and press **F6** to copy the tooltip contents to the clipboard.

Hovering a service node shows that service's tooltip:

| Field group | Fields |
|-------------|--------|
| Status | Operations, Last Activity, Connections |
| Performance (last 60s) | Throughput (ops/s and total), Latency p50 / p95 / p99, Errors |

## Related

- **For concept and design:** see [Overview](../Overview/index.md).
- **For color meanings referenced in these boards:** see [Color legend](color-legend.md).
- **For how to reach these boards:** see [Navigation model](navigation-model.md).
- **For Tessa's energy state:** see [Tessa commands and runtime](assistant-commands.md).
