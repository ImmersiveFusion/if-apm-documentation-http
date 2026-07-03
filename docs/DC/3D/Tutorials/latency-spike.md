# Investigating a Latency Spike

**Difficulty:** :material-star::material-star: Intermediate | **Time:** ~15 minutes

This tutorial walks you through tracking down a latency spike end to end, from the first visual cue on the Grid to the root cause. A service is running slow and users are complaining. You'll follow the problem into the Diagnostics cube, read the trace's spans and logs, then confirm it with Tessa.

## What You'll Learn

- How to spot slow traces on the Grid by their height
- How to send a trace into the Diagnostics cube
- How to read the logs wall and the span waterfall to find a root cause
- How to confirm the finding with Tessa

---

## Step 1: Spot the Slow Trace on the Grid

1. **Enter your grid** and press `M` for the Traces & Logs Camera View, a top-down view of the trace field.
2. **Find the tallest towers** in the top-down view. A trace's height is its duration, so slow traces stand out above the rest. Hover one for its tooltip if you want to confirm before dropping in.
3. **Click a tall `order-service` trace cube** to port down onto the grid at that spot. You land on the skyline, standing next to it.

!!! info "What you see"
    You are now on a purple-gridded floor with a skyline of cuboid towers stretching in front of you, a city of traces. Most are short and green, steady traffic completing quickly. The cluster you dropped into rises far above the rest, tied to `order-service`. The tall towers are green, not red: these traces are completing, they are just taking a long time, so they stand tall without turning red. That height is the visual signature of a latency spike.

!!! tip "ProTip"
    A tower's height is duration and its color is health. A tall red tower is a slow trace that also failed; a tall green tower is a slow trace that still succeeded. See the [Color legend](../Reference/color-legend.md).

---

## Step 2: Send the Trace to the Diagnostics cube

1. **Look at the tower you landed next to.** Each trace sits as two adjacent aggregate blocks: a Trace Aggregate Block (its spans) and a Log Aggregate Block (its logs).
2. **Click the rhombus next to the Trace Aggregate Block.** You zoom deeper into that trace and arrive inside the Diagnostics cube, where Tessa's context is focused on it.

!!! info "What you see"
    The Grid dissolves and the Diagnostics cube builds around you, "DIAGNOSTICS" on the wall. The single trace has un-flattened into two giant walls of horizontal bars, and you are standing between them. This is the payoff of a spatial trace: instead of a collapsed row in a table, the trace is a place you stand inside, logs on one wall and the span waterfall on the other.

---

## Step 3: Read the Span Waterfall

1. **Turn to the north wall**, the span waterfall.
2. **Follow the bars down and to the right.** Bar length is span duration, so the widest bar is the slowest span.

!!! info "What you see"
    The spans step down and to the right in a classic waterfall: the incoming request, then child spans branching out through middleware, business logic, and the database call. One span dominates: a `SELECT` against `inventory-db` stretches far wider than any other bar, its width standing for a ~2,100ms duration. The other spans are thin slivers by comparison. Green spans are healthy; had any errored, they would be red. The bottleneck is immediately, viscerally obvious.

---

## Step 4: Read the Logs Wall

1. **Turn to the west wall**, all the logs for this trace.
2. **Read the bars top to bottom.** Each log line is a horizontal bar, color-coded by level, with the text readable on its face.

!!! info "What you see"
    The logs for this one trace stack as horizontal bars, color-coded by log level: red for error, yellow for warning, white or grey for info. Reading down the wall, you find the log lines from the slow database call, the connection-pool waits and the query-plan warning that explain why the `SELECT` took so long. You read the story of the request directly off the wall, no separate log search required.

!!! tip "ProTip"
    Log-level colors (red error, yellow warning) are their own scale, separate from the Grid's health colors. Yellow is a log warning, never a Grid health state. See the [Color legend](../Reference/color-legend.md#diagnostics-log-levels).

---

## Step 5: Confirm the Root Cause with Tessa

1. **Open the Tessa console** and ask:
   ```
   What changed with inventory-db, and how does now compare to yesterday?
   ```
2. **Press Enter** and let Tessa work.

!!! info "What you see"
    Tessa is already scoped to this trace, because you are standing in it. She compares the current window against the same time yesterday and reports the regression:

    | Metric | Yesterday | Now | Change |
    |--------|-----------|-----|--------|
    | P95 latency | 75ms | 1,240ms | +1,553% |
    | DB query time | 12ms | 2,134ms | +17,683% |

    She then explains the change: a deployment to `inventory-service` this morning added a batch `SELECT` with a large `IN` clause, and the query plan falls back to a sequential scan once the list exceeds about 100 items. The tall green tower, the wide `SELECT` span, and the logs all pointed here; Tessa confirms the cause and the change that introduced it.

---

## Summary

In this scenario, you:

| Step | Action | Outcome |
|------|--------|---------|
| 1 | Spotted the tall, green towers on the Grid | Identified `order-service` traces as slow, not failing |
| 2 | Clicked the trace block's rhombus | Teleported into the Diagnostics cube with the trace |
| 3 | Read the span waterfall | Saw the wide `inventory-db` `SELECT` span as the bottleneck |
| 4 | Read the logs wall | Found the query-plan and connection-pool detail behind the slow call |
| 5 | Asked Tessa to confirm | Confirmed the regression and the deployment that caused it |

**You traveled from "something is slow" to the exact root cause by moving through space.**

## Related

- [Investigate a trace](../How-to/investigate-a-trace.md) - The same arc as a quick task reference
- [Color legend](../Reference/color-legend.md) - What green, red, black, and grey mean, and why a slow trace stays green
- [The spatial model](../Overview/the-spatial-model.md) - How the Grid, the Core, and the Diagnostics cube fit together
- [Navigation & Controls](../Guides/Navigation/index.md) - Full keyboard and mouse reference
