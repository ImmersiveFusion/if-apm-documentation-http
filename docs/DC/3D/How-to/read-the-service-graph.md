---
title: Read the service graph
diataxis: how-to
tags: [how-to, service-graph, navigation]
---

# Read the service graph

This guide shows how to read your service topology and drill into a single service.

## Get the full overview

1. **Press `N`** for the Services & Dependencies Camera View, the top-down flattened overview of your whole topology.
2. **Scan for red or burning nodes.** A node glowing red is unhealthy; a node with a burning texture in its center is on fire. You can hover a node for its tooltip from this top-down view, before you drop into the graph.
3. **Look at black nodes.** Black is a phantom, a service that should exist and does not. See [Rendering absence](../Overview/rendering-absence.md).

## Check a node's stats

1. **Hover a node** to see its tooltip: operations, last activity, connections, throughput, latency (p50/p95/p99), and errors.
2. **Press `F6`** to copy the tooltip contents to the clipboard.

## Drill into a node

1. **Click any node** to teleport onto it.
2. Once you are on the graph, it returns to its organic 3D form, so you can walk the neighborhood around the node you chose.
3. **Read the summary boards on the node's platform** for that service's health, errors, and callers. See [Readouts and boards](../Reference/readouts-and-boards.md).

## Choose how you get to a node

Pick whichever path fits what you know.

### Board-led: you know the service by name

1. At the graph root, **read the summary boards** (Recent Errors, Services, Dependencies).
2. **Find the row** for the service you want.
3. **Click the row** to travel there.

### Fire-led: you can see it is on fire

1. **Look for a visibly red or burning node** in the graph.
2. **Click it** to go straight there.

**Verification:** you are standing on the node's platform, and the summary boards around you show that service's health, errors, and callers.

## Related

- [Navigation model](../Reference/navigation-model.md)
- [Readouts and boards](../Reference/readouts-and-boards.md)
