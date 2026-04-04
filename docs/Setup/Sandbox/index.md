# Sandbox

Try IAPM without any setup. Jump into a fully functional environment with demo data and explore every feature - no instrumentation, no configuration, zero risk.

## Two Ways to Explore

IAPM offers two sandbox experiences, each designed for a different stage of your exploration.

| Feature | Demo Grid | Chaos Simulator |
| --- | --- | --- |
| **What is it?** | Built-in demo mode inside IAPM 3D | Open-source web app at [demo.iapm.app](https://demo.iapm.app){ target="_blank" } |
| **Setup** | None - just select "Demo" in the grid picker | None - opens in your browser |
| **Best for** | Learning the 3D interface, navigation, and Tessa | Testing failure scenarios, seeing how IAPM handles chaos |
| **Data source** | Generates realistic telemetry locally | Sends live OpenTelemetry data from a simulated microservice app |
| **Requires IAPM 3D?** | Yes (v1.10+) | No - works with any IAPM surface |
| **Interactive failures** | No - shows healthy demo topology | Yes - inject latency, errors, timeouts, cascading failures |

!!! tip "Start here"
    New to IAPM? Start with the **Demo Grid** to get comfortable with the interface, then move to the **Chaos Simulator** to see how IAPM handles real-world problems. Follow the [Guided Tour](guided-tour.md) for a step-by-step walkthrough of both.

---

## Demo Grid

Available in IAPM 3D v1.10 and later. The Demo Grid generates a realistic service topology with telemetry data so you can explore the full 3D experience immediately.

### How to Use

1. Launch **IAPM 3D**
2. Open the **grid picker**
3. Select **"Demo"**
4. Demo services appear on the Grid - start exploring

That's it. No accounts, no API keys, no external connections. The demo data runs entirely on your machine.

### What You Get

| Feature | Details |
| --- | --- |
| **Realistic topology** | Multiple interconnected services with dependencies |
| **Live telemetry** | Metrics, traces, and logs generated in real time |
| **Full navigation** | Grid view, Graph view, Diagnostics Room - everything works |
| **Tessa** | Ask the AI Assistant questions about the demo data |

---

## Chaos Simulator

The [OpenTelemetry Chaos Simulator](https://github.com/ImmersiveFusion/if-opentelemetry-chaos-simulator-sample){ target="_blank" } is an open-source web application that lets you inject failures into a simulated microservice environment and watch IAPM respond in real time.

![Chaos Simulator Interface](https://github.com/ImmersiveFusion/if-opentelemetry-chaos-simulator-sample/raw/main/.img/screenshot.png)

### How to Use It

1. Go to [demo.iapm.app](https://demo.iapm.app){ target="_blank" }
2. A unique sandbox is created automatically for you
3. Click buttons to generate traffic and inject chaos
4. Open [IAPM](../../IAPM/3D/index.md) to see the telemetry appear live

### What You Can Simulate

| Scenario | Effect |
| --- | --- |
| **Normal traffic** | Healthy request patterns across services |
| **High latency** | Slow response times that ripple through the system |
| **Errors** | HTTP 500 responses and exception traces |
| **Timeouts** | Connection and request timeouts |
| **Cascading failures** | Failures that propagate from one service to its dependents |

### Your Sandbox Is Isolated

Each session is completely independent:

- **Unique instance** - Created automatically when you access the simulator
- **Persistent** - Bookmark the URL to return to the same sandbox later
- **Isolated** - Your chaos doesn't affect other users

!!! info "Real-time only"
    The Chaos Simulator generates real-time data. Historical data is not retained between sessions.

---

## Next Steps

[Follow the Guided Tour :material-compass:](guided-tour.md){ .md-button .md-button--primary }
[Launch Chaos Simulator :material-flask:](https://demo.iapm.app){ .md-button target="_blank" }
[Instrument Your Own App :material-arrow-right:](../../Instrument/index.md){ .md-button }
