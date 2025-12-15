# Sandbox

Try IAPM without any setup. The sandbox provides a fully functional environment with demo data so you can explore features before instrumenting your own applications.

## Why Use the Sandbox?

| Benefit | Description |
|---------|-------------|
| **No setup required** | Start exploring immediately |
| **Safe environment** | Experiment freely without affecting production |
| **Full functionality** | Access all IAPM features |
| **Learn by doing** | Understand how telemetry appears in the platform |

## Chaos Simulator

The [OpenTelemetry Chaos Simulator](https://github.com/ImmersiveFusion/if-opentelemetry-chaos-simulator-sample){ target="_blank" } is an open-source demo application that generates realistic telemetry data.

![Chaos Simulator Interface](https://github.com/ImmersiveFusion/if-opentelemetry-chaos-simulator-sample/raw/main/.img/screenshot.png)

### What It Does

| Feature | Description |
|---------|-------------|
| **Inject failures** | Simulate errors, timeouts, and exceptions |
| **Generate traffic** | Create realistic request patterns |
| **See results live** | Watch telemetry appear in IAPM in real-time |
| **No code changes** | Pre-configured with OpenTelemetry |

### How to Use

1. Go to [demo.iapm.app](https://demo.iapm.app){ target="_blank" }
2. A unique sandbox is created automatically for you
3. Click buttons to trigger actions and inject chaos
4. Open [IAPM Desktop](../../Products/IAPM-Desktop/index.md) to see the telemetry

!!! info "Real-time Only"
    The Chaos Simulator generates real-time data only. Historical data is not retained.

### What You Can Simulate

| Scenario | Effect |
|----------|--------|
| Normal traffic | Healthy request patterns |
| High latency | Slow response times |
| Errors | HTTP 500 and exception traces |
| Timeouts | Connection and request timeouts |
| Cascading failures | Failures that propagate across services |

## Your Own Sandbox

Each sandbox session is isolated:

- **Unique instance** - Created when you access the simulator
- **Persistent** - Bookmark the URL to return to the same sandbox
- **Isolated** - Your actions don't affect other users

## Next Steps

[Launch Chaos Simulator :material-flask:](https://demo.iapm.app){ .md-button .md-button--primary target="_blank" }
[Get Started with IAPM :material-arrow-right:](../../Getting-Started/index.md){ .md-button }
