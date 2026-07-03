---
title: Investigate a trace
diataxis: how-to
tags: [how-to, grid, diagnostics, traces]
---

# Investigate a trace

This guide shows how to investigate a single trace from the grid down to its root cause in the Diagnostics cube.

## Find a trace worth examining

1. **Press `M`** for the Traces & Logs Camera View. This is a top-down view looking down on the field of trace blocks.
2. **Click a trace cube** to port down onto the grid at that cube's location. You land on the grid, standing on the skyline right next to the cube you picked.
3. **Read the skyline around you.** Read height and color together:
    - A **tall Trace Aggregate Block** is a slow trace (height grows with the combined span duration).
    - A **red block** is a failed trace (an error span or error log).
    - An **orange Log Aggregate Block** has a warning log but no error.
    - A **black Trace Aggregate Block** is a trace missing a span.
4. **Hover a block** for its tooltip to read the error text and trace details, then press **F6** to copy. The details are in the tooltip, not printed on the block face.

## Send the trace to Diagnostics

1. **Click the rhombus next to the Trace Aggregate Block** you want to examine.
2. You zoom deeper into that trace and arrive inside the **Diagnostics cube**, where Tessa's context is focused on it.

## Read the two walls

Inside Diagnostics, the trace un-flattens into two walls.

1. **Read the span waterfall** (north). Spans render as 3D bars stepping down and to the right. Bar length is span duration. Red spans are errored. For a large waterfall, **jump to start swimming** and move up and around the bars to read it from any angle.
2. **Read the logs wall** (west). Logs stack as horizontal bars, color-coded by level. The actual log text is readable on each bar.
3. **Trace the root cause**: follow the waterfall to the point it turns red, then read the logs at that same point for the reason.

**Verification:** you are now standing inside the trace, with the logs wall and the span waterfall both visible around you.

## Alternative: ask Tessa which trace to look at

1. From a service platform, **press `F12`** to open the Tessa console.
2. Ask Tessa which trace is slow or failing, and let her point you to it.
3. **Go to that trace on the grid** and enter it through its Trace Aggregate Block's rhombus, as above. Entering the Diagnostics cube is always done from the grid block, not from the console.

## Related

- [The spatial model](../Overview/the-spatial-model.md)
- [Color legend](../Reference/color-legend.md)
- [Navigation model](../Reference/navigation-model.md)
