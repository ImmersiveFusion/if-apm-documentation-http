# Investigating a Latency Spike

**Difficulty:** :material-star::material-star: Intermediate | **Time:** ~15 minutes

A service is running slow. Users are complaining. In this walkthrough, you'll track down a latency spike from the first visual indicator on the Grid all the way to the root cause - a slow database query - using Tessa and the Diagnostics Room.

## What You'll Learn

- How to spot latency problems from visual indicators
- How to use Tessa to diagnose latency issues
- How to examine slow traces in the Diagnostics Room
- How to compare current performance against a baseline

---

## Step 1: Spot the Problem on the Grid

1. **Enter your grid** and look across your services.
2. **Scan for yellow or orange indicators** - these signal elevated or high latency.

!!! info "What you see"
    Most of your Grid glows a steady green. But one service stands out - `order-service` pulses with an orange glow, noticeably different from its neighbors. The connections leading into it are still active (pulsing lines), but the pulses move slower than usual, visually reflecting the increased response times. The services downstream from `order-service` may show yellow indicators too, as the latency cascades.

---

## Step 2: Fly to the Affected Service

1. **Navigate toward `order-service`** using `W` to move forward. Use `Space` to rise above the Grid for a better approach angle.
2. **Left-click on `order-service`** to select it.

!!! info "What you see"
    As you approach, the orange glow becomes more vivid. You can see the service name and its key metrics in the selection panel - latency has jumped from its normal 80ms to over 1,200ms. The error rate is still low, so the service isn't failing - it's just slow. The outgoing connections to downstream services pulse sluggishly compared to the crisp, fast pulses on healthy connections nearby.

---

## Step 3: Ask Tessa What's Wrong

1. **Open the chat panel** and type:
   ```
   What's causing the latency spike on order-service?
   ```
2. **Press Enter** and let Tessa work.

!!! info "What you see"
    Tessa begins her analysis. She runs multiple diagnostics in sequence - a health check on the service, pressure detection across its dependencies, and an analysis of the slowest endpoints. After a moment, she responds with findings:

    - **Health status:** `order-service` is degraded - P95 latency is 1,240ms (normally 75ms)
    - **Pressure source:** Outbound calls to `inventory-db` are taking 2,100ms on average
    - **Slowest endpoint:** `POST /api/orders/create` - 95th percentile at 2,340ms

    Tessa has narrowed the problem from "something is slow" to "the inventory database calls inside the order creation endpoint are the bottleneck."

---

## Step 4: Enter the Diagnostics Room

1. **Ask Tessa** or click a slow trace from the details panel to examine it up close:
   ```
   Show me a slow trace for order-service
   ```
2. **Click the trace link** that Tessa provides, or select one from the panel. You'll teleport into the Diagnostics Room.

!!! info "What you see"
    The Grid dissolves and the Diagnostics Room builds around you. You're now inside a single trace - the full journey of one request through your system. Spans are arranged in 3D space, laid out chronologically. The first span on the left is the incoming HTTP request. Moving right, you see child spans branching out - middleware, business logic, and then the database call.

    One span dominates the view: `SELECT * FROM inventory WHERE product_id IN (...)` - it stretches far wider than any other span, visually representing its 2,100ms duration. The other spans are thin slivers by comparison. The bottleneck is immediately, viscerally obvious.

!!! tip "ProTip"
    In the Diagnostics Room, move closer to a span to see its full details - duration, status code, tags, and associated logs. The spatial layout makes it easy to spot which span consumed the most time without reading a single number.

---

## Step 5: Examine the Slow Span

1. **Fly toward the long span** - the database query.
2. **Left-click** on it to see its full details.

!!! info "What you see"
    The span detail panel reveals everything about this database call:

    - **Operation:** `SELECT * FROM inventory WHERE product_id IN (...)`
    - **Duration:** 2,134ms
    - **Database:** `inventory-db` (PostgreSQL)
    - **Rows returned:** 847

    The query is fetching inventory data for a large batch of products without an efficient index. The logs associated with this span may show additional context - connection pool wait times or query plan warnings.

---

## Step 6: Compare with Yesterday

1. **Return to the chat panel** and ask Tessa:
   ```
   Compare the last hour to the same time yesterday
   ```
2. **Review Tessa's comparison.**

!!! info "What you see"
    Tessa pulls metrics from both time windows and compares them side by side:

    | Metric | Yesterday | Now | Change |
    |--------|-----------|-----|--------|
    | P95 latency | 75ms | 1,240ms | +1,553% |
    | Throughput | 320 req/s | 290 req/s | -9% |
    | Error rate | 0.1% | 0.4% | +300% |
    | DB query time | 12ms | 2,134ms | +17,683% |

    The database query time has exploded. Everything else is a downstream effect. Tessa notes that throughput has actually decreased slightly - likely because slow responses are backing up the request queue.

---

## Step 7: Identify the Root Cause

1. **Ask Tessa for more detail:**
   ```
   What changed with inventory-db since yesterday?
   ```

!!! info "What you see"
    Tessa investigates and reports back. She detects that a deployment to `inventory-service` went out this morning that added a new query pattern - the batch `SELECT` with a large `IN` clause. The `product_id` column has an index, but the query plan is falling back to a sequential scan when the `IN` list exceeds ~100 items. This is a classic missing composite index problem.

---

## Step 8: Ask Tessa for the Fix

1. **Ask Tessa:**
   ```
   How do I fix the slow inventory query?
   ```

!!! info "What you see"
    Tessa provides actionable recommendations:

    1. **Immediate:** Add a composite index on the `inventory` table covering the columns used in the query
    2. **Short-term:** Limit the batch size in the `IN` clause to 50 items and paginate
    3. **Long-term:** Consider caching frequently requested inventory data

    She gives you enough context to hand this directly to the team responsible for `inventory-service`.

---

## Summary

In this scenario, you:

| Step | Action | Outcome |
|------|--------|---------|
| 1 | Spotted orange indicators on the Grid | Identified `order-service` as the problem |
| 2 | Flew to the service and selected it | Saw latency had jumped to 1,200ms |
| 3 | Asked Tessa to diagnose | Narrowed to slow `inventory-db` calls |
| 4 | Entered the Diagnostics Room | Visualized the slow database span in 3D |
| 5 | Examined the span details | Found the exact query and its 2.1s duration |
| 6 | Compared with yesterday | Confirmed this is a new regression |
| 7 | Investigated the change | Found a new query pattern from a deployment |
| 8 | Asked for a fix | Got actionable index and batch-size recommendations |

**Total time from alert to root cause: under 5 minutes.**

## Related

- [Navigation & Controls](../Navigation/index.md) - Full keyboard and mouse reference
- [Root Cause Analysis with Tessa](root-cause-analysis.md) - Diagnosing multi-service failures
- [Understanding Your Service Topology](service-graph.md) - Mapping dependencies and traffic patterns
