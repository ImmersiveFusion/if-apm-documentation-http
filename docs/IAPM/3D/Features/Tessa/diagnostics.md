# Diagnostics

> Tessa doesn't just answer questions - she runs real diagnostics against your live telemetry. Every response is backed by actual data from your Grid.

## How Diagnostics Work

When you ask Tessa a question, she selects the right diagnostic tool, queries your Grid data, and synthesizes the results into a clear answer. She can chain multiple tools together for complex investigations - for example, checking system health, then drilling into the unhealthy service, then comparing it to yesterday's performance.

Tessa correlates across **traces, logs, and metrics** automatically. You don't need to specify which data source to check - she figures that out based on your question.

## Diagnostic Capabilities

### System Health Check

Get an instant overview of your system's current state. Tessa evaluates service health, error rates, latency, and throughput across your entire Grid.

!!! example "Try asking"
    - "How is my system doing?"
    - "Give me a health check"
    - "Is everything healthy?"
    - "What's the overall status right now?"

---

### Alert Summary

See what's firing, what recently resolved, and what's trending toward a threshold. Tessa pulls active and recent alerts and explains what they mean.

!!! example "Try asking"
    - "Are there any active alerts?"
    - "What alerts fired in the last 24 hours?"
    - "Has anything triggered a warning today?"

---

### Root Cause Analysis

Tessa traces the chain of causation when something goes wrong. She follows the dependency graph, checks for correlated errors, and identifies the most likely origin of the problem.

!!! example "Try asking"
    - "Why is checkout slow?"
    - "What's causing 500 errors on the payment service?"
    - "Root cause the latency spike at 2pm"
    - "Why did order-service start failing?"

---

### Pressure Detection

Identify services or resources that are under strain before they fail. Tessa detects rising error rates, increasing latency, queue depth growth, and resource saturation.

!!! example "Try asking"
    - "Is there pressure building anywhere?"
    - "Which services are under stress?"
    - "Are any services approaching their limits?"
    - "What's at risk of failing soon?"

---

### Trend Analysis

Understand how metrics are changing over time. Tessa identifies trends in latency, throughput, error rates, and resource utilization, and flags anything unusual.

!!! example "Try asking"
    - "Show me the latency trend for auth-service"
    - "How has error rate changed over the last 6 hours?"
    - "Is response time getting worse on the /api/users endpoint?"
    - "What's the throughput trend for the database?"

---

### Service Dependency Map

Visualize how services connect and depend on each other. Tessa maps out the dependency graph and identifies critical paths, single points of failure, and high-traffic connections.

!!! example "Try asking"
    - "Show me the service dependency map"
    - "What services depend on order-service?"
    - "Map out the request path from gateway to database"
    - "What are the downstream dependencies of auth-service?"

---

### Event Timeline

Build a chronological view of events to understand what happened and in what order. Tessa assembles deployments, alerts, errors, and configuration changes into a single timeline.

!!! example "Try asking"
    - "Build me a timeline of events in the last hour"
    - "What happened between 2pm and 3pm?"
    - "Show me the sequence of events leading up to the outage"
    - "What events occurred around the time errors started?"

---

### Slowest Endpoints

Find the endpoints dragging down your system's performance. Tessa ranks endpoints by response time and identifies outliers.

!!! example "Try asking"
    - "What are the slowest endpoints?"
    - "Which API calls take the longest?"
    - "Show me the top 10 slowest endpoints in the last hour"
    - "Are there any endpoints with p99 latency over 2 seconds?"

---

### Deployment Change Detection

Detect recent deployments and correlate them with performance changes. Tessa identifies what was deployed, when, and whether performance shifted afterward.

!!! example "Try asking"
    - "What changed recently?"
    - "Were there any deployments in the last 24 hours?"
    - "Did a deployment cause this regression?"
    - "What was deployed right before errors started?"

---

### Time-Window Comparison

Compare two time periods to understand what changed. Tessa evaluates differences in latency, error rates, throughput, and resource usage between the windows.

!!! example "Try asking"
    - "Compare the last hour to the same time yesterday"
    - "How does this morning compare to last Monday?"
    - "Is performance better or worse than last week?"
    - "Compare pre-deployment to post-deployment metrics"

---

### Trace Exploration

Dive into individual traces or trace patterns. Tessa can find traces that match specific criteria, identify anomalous spans, and explain the request flow.

!!! example "Try asking"
    - "Find slow traces for the checkout flow"
    - "Show me traces with errors on payment-service"
    - "What does a typical request to /api/orders look like?"
    - "Find traces where database calls took over 500ms"

## Context Awareness in 3D

In IAPM 3D, Tessa knows where you are. She tracks your current room and what you're looking at, which means you can ask contextual questions without specifying the target.

| Where You Are | What Tessa Knows |
|---------------|------------------|
| Standing near a service node | Which service you're investigating |
| Inside the Diagnostics Room | Which trace you're viewing |
| Viewing the service graph | The overall topology you see |
| Looking at a performance chart | The metric and time range in view |

!!! tip "Contextual shorthand"
    Instead of "What's the health of order-service?", you can walk up to the order-service node and just ask "What's wrong here?" - Tessa fills in the context.

## Chaining Diagnostics

Tessa's real power shows when she chains multiple diagnostics together. A single question like "Why did checkout break after today's deployment?" might trigger:

1. **Deployment detection** - to identify what was deployed
2. **Time-window comparison** - to compare before and after
3. **Root cause analysis** - to trace the chain of causation
4. **Trace exploration** - to find specific failing traces

You don't need to run these one at a time. Ask the high-level question and let Tessa orchestrate the investigation.
