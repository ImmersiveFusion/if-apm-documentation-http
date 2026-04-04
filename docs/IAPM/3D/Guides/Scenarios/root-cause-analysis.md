# Root Cause Analysis with Tessa

**Difficulty:** :material-star::material-star: Intermediate | **Time:** ~20 minutes

Errors are spreading across your system. Multiple services are red. This isn't a single slow query - it's a cascading failure, and you need to find where it started. In this walkthrough, you'll use Tessa's diagnostic tools to trace the chain of failures back to a bad deployment.

## What You'll Learn

- How to interpret cascading failure patterns on the Grid
- How to use Tessa to group errors by root cause
- How to follow dependency chains in the 3D environment
- How to use incident timelines and deployment detection

---

## Step 1: See the Damage

1. **Enter your grid** and immediately scan the environment.
2. **Rise up with `Space`** to get a wide view of the entire topology.

!!! info "What you see"
    This isn't subtle. From your elevated vantage point, you can see a cluster of red and orange services on the right side of the Grid. At least five or six services glow red with critical indicators. The connections between them pulse erratically - some lines flicker, others have gone dim. Surrounding services show yellow and orange as the impact ripples outward. The left side of the Grid is still green, unaffected - for now. The contrast between the healthy and failing regions is stark.

---

## Step 2: Ask Tessa for the Big Picture

1. **Open the chat panel** and type:
   ```
   What's wrong with my system right now?
   ```
2. **Press Enter** and wait for the diagnosis.

!!! info "What you see"
    Tessa runs a comprehensive health check across your entire grid. After a few moments, she returns with a structured assessment:

    - **Critical (red):** `auth-service`, `user-service`, `session-service`, `profile-service`, `notification-service`
    - **Degraded (orange):** `order-service`, `payment-service`, `search-service`
    - **Healthy (green):** 14 other services unaffected

    Tessa groups the errors by pattern: all five critical services are returning `503 Service Unavailable` responses, and they all depend on `auth-service` either directly or through `session-service`. She identifies `auth-service` as the likely epicenter.

!!! tip "ProTip"
    When Tessa groups errors by root cause, she's looking at shared dependencies, correlated timing, and common error signatures. This is faster than manually checking each service.

---

## Step 3: Follow the Dependency Chain

1. **Move toward the cluster of red services.** Use `Shift` + `W` to sprint, or teleport to a service platform.
2. **Look at the connections** between the failing services. Follow the pulsing lines to see the dependency direction.
3. **Switch to Graph view** by pressing `N` to see the relationship structure more clearly.

!!! info "What you see"
    In Graph view, the failing services rearrange based on their actual dependencies. The layout reveals the hierarchy clearly: `auth-service` sits at the center of the red cluster, with `session-service` and `user-service` connected directly to it. `profile-service` and `notification-service` connect through `session-service`. The dependency chain fans out from a single point.

    The connections from `auth-service` to its dependents flicker with error indicators - the pulsing has turned choppy and irregular, visually distinct from the smooth, steady pulses on healthy connections elsewhere. You can see requests flowing in but failing to complete.

---

## Step 4: Request the Incident Timeline

1. **Ask Tessa:**
   ```
   Show me the incident timeline
   ```
2. **Review the chronological sequence** Tessa provides.

!!! info "What you see"
    Tessa reconstructs the sequence of events:

    | Time | Event |
    |------|-------|
    | 14:32 | `auth-service` error rate jumps from 0.1% to 15% |
    | 14:33 | `session-service` begins returning 503s (depends on `auth-service`) |
    | 14:34 | `user-service` latency spikes as auth calls fail and retry |
    | 14:35 | `profile-service` and `notification-service` degrade (depend on `session-service`) |
    | 14:37 | `order-service` and `payment-service` show elevated latency from auth timeouts |
    | 14:38 | Alert triggered |

    The timeline makes the cascade visible: `auth-service` failed first, and everything else dominoed from there. Six minutes from first error to full cascade.

---

## Step 5: Detect What Changed

1. **Ask Tessa:**
   ```
   What changed recently?
   ```
2. **Review Tessa's deployment detection results.**

!!! info "What you see"
    Tessa checks for recent deployments and configuration changes across your services. She finds the smoking gun:

    - **14:30** - A new version of `auth-service` was deployed (version `2.4.1` replacing `2.4.0`)
    - The deployment happened **2 minutes before** the error rate spike
    - No other services were deployed in the surrounding time window

    The correlation is clear: the `auth-service` deployment at 14:30 is the trigger for the cascade that started at 14:32.

---

## Step 6: Deep-Dive into auth-service

1. **Ask Tessa:**
   ```
   Deep-dive into auth-service
   ```
2. **Review the detailed analysis.**

!!! info "What you see"
    Tessa runs a focused analysis on `auth-service` and reports:

    - **Error type:** `NullReferenceException` in the token validation path
    - **Affected endpoint:** `POST /api/auth/validate` - 89% error rate
    - **Unaffected endpoint:** `POST /api/auth/login` - still working normally
    - **Pattern:** The error only occurs when validating tokens issued before the deployment

    The new version introduced a breaking change in how it parses existing session tokens. Tokens issued by `v2.4.0` are not compatible with the validation logic in `v2.4.1`. New logins work fine, but any user with an existing session hits the bug.

---

## Step 7: Examine the Failing Traces

1. **Click on `auth-service`** to select it.
2. **Open a failing trace** from the details panel to enter the Diagnostics Room.

!!! info "What you see"
    Inside the Diagnostics Room, the trace tells the full story in 3D. The incoming request span shows a valid session token. The next span - token validation - is bright red and short, ending abruptly with the `NullReferenceException`. There's no database call, no downstream dependency - the failure happens entirely within `auth-service`'s own code. The stack trace in the span details points to a specific line in the token parser.

    Compared to a healthy trace (which you can view side by side), the failing trace is missing the entire second half of the normal request flow. The validation span should lead to a cache lookup and a response - instead, it terminates immediately.

---

## Step 8: Confirm and Act

1. **Return to the chat** and ask Tessa:
   ```
   Summarize this incident for my team
   ```

!!! info "What you see"
    Tessa generates a concise incident summary:

    > **Incident:** Cascading auth failure affecting 8 services
    >
    > **Root cause:** `auth-service` v2.4.1 deployed at 14:30 introduced a token parsing regression. The `validate` endpoint throws a `NullReferenceException` for tokens issued by the previous version.
    >
    > **Impact:** 5 services critical, 3 degraded. All services depending on auth validation are affected. New logins still work.
    >
    > **Recommended action:** Roll back `auth-service` to v2.4.0 to immediately restore service. Fix the token parser in v2.4.2 before redeploying.
    >
    > **Time to detection:** 8 minutes. **Time to root cause:** 12 minutes.

---

## Summary

| Step | Action | Outcome |
|------|--------|---------|
| 1 | Observed the Grid from above | Saw a cluster of red services on one side |
| 2 | Asked Tessa for system health | Got errors grouped by root cause, pointing to `auth-service` |
| 3 | Followed dependency chain in Graph view | Confirmed `auth-service` as the epicenter |
| 4 | Requested incident timeline | Saw the cascade unfold chronologically from 14:32 |
| 5 | Asked what changed | Found a deployment to `auth-service` at 14:30 |
| 6 | Deep-dived into `auth-service` | Found the `NullReferenceException` in token validation |
| 7 | Examined traces in the Diagnostics Room | Saw the exact failure point in 3D |
| 8 | Asked for an incident summary | Got a shareable report with root cause and remediation |

**From "everything is red" to "roll back auth-service v2.4.1" in under 15 minutes.**

## Related

- [Investigating a Latency Spike](latency-spike.md) - Single-service latency diagnosis
- [Understanding Your Service Topology](service-graph.md) - Mapping dependencies before incidents happen
- [Navigation & Controls](../Navigation/index.md) - Full keyboard and mouse reference
