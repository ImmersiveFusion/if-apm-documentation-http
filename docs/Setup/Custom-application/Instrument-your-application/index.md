# Instrument Your Application

{!template/subscription-required.mdp!}

Connect your application to Immersive APM using [OpenTelemetry](../../../Resources/Terms-and-Concepts/Observability/Frameworks/OpenTelemetry/index.md). Most applications see data within 5 minutes.

## Quick Configuration

All you need is your **OTLP endpoint** and **API key**:

| Setting | Value |
|---------|-------|
| **Endpoint** | `https://otlp.iapm.app` |
| **API Key Header** | `API-Key: YOUR-API-KEY` |

Get your API key by logging in at [portal.iapm.app](https://portal.iapm.app){ target="_blank" }, then go to **Administration → Grids** and click **Instrument** on your grid.

![Instrument](../img/instrument.png)

## Language Examples

Choose your language to see the OTLP exporter configuration:

=== "C# / .NET"

    ```csharp
    // In your OpenTelemetry setup (Program.cs or Startup.cs)
    .AddOtlpExporter(options =>
    {
        options.Endpoint = new Uri("https://otlp.iapm.app");
        options.Headers = "API-Key=YOUR-API-KEY";
    })
    ```

    **Full setup example:**

    ```csharp
    builder.Services.AddOpenTelemetry()
        .WithTracing(tracing => tracing
            .AddAspNetCoreInstrumentation()
            .AddHttpClientInstrumentation()
            .AddOtlpExporter(options =>
            {
                options.Endpoint = new Uri("https://otlp.iapm.app");
                options.Headers = "API-Key=YOUR-API-KEY";
            }))
        .WithMetrics(metrics => metrics
            .AddAspNetCoreInstrumentation()
            .AddOtlpExporter(options =>
            {
                options.Endpoint = new Uri("https://otlp.iapm.app");
                options.Headers = "API-Key=YOUR-API-KEY";
            }));
    ```

    [.NET OpenTelemetry Docs](https://opentelemetry.io/docs/languages/net/){ target="_blank" }

=== "Java"

    ```java
    // Environment variables
    OTEL_EXPORTER_OTLP_ENDPOINT=https://otlp.iapm.app
    OTEL_EXPORTER_OTLP_HEADERS=API-Key=YOUR-API-KEY
    ```

    **Or programmatically:**

    ```java
    OtlpGrpcSpanExporter exporter = OtlpGrpcSpanExporter.builder()
        .setEndpoint("https://otlp.iapm.app")
        .addHeader("API-Key", "YOUR-API-KEY")
        .build();
    ```

    [Java OpenTelemetry Docs](https://opentelemetry.io/docs/languages/java/){ target="_blank" }

=== "Python"

    ```python
    # Environment variables
    OTEL_EXPORTER_OTLP_ENDPOINT=https://otlp.iapm.app
    OTEL_EXPORTER_OTLP_HEADERS=API-Key=YOUR-API-KEY
    ```

    **Or programmatically:**

    ```python
    from opentelemetry.exporter.otlp.proto.grpc.trace_exporter import OTLPSpanExporter

    exporter = OTLPSpanExporter(
        endpoint="https://otlp.iapm.app",
        headers={"API-Key": "YOUR-API-KEY"}
    )
    ```

    [Python OpenTelemetry Docs](https://opentelemetry.io/docs/languages/python/){ target="_blank" }

=== "Node.js"

    ```javascript
    // Environment variables
    OTEL_EXPORTER_OTLP_ENDPOINT=https://otlp.iapm.app
    OTEL_EXPORTER_OTLP_HEADERS=API-Key=YOUR-API-KEY
    ```

    **Or programmatically:**

    ```javascript
    const { OTLPTraceExporter } = require('@opentelemetry/exporter-trace-otlp-grpc');

    const exporter = new OTLPTraceExporter({
      url: 'https://otlp.iapm.app',
      headers: { 'API-Key': 'YOUR-API-KEY' }
    });
    ```

    [Node.js OpenTelemetry Docs](https://opentelemetry.io/docs/languages/js/){ target="_blank" }

=== "Go"

    ```go
    // Environment variables
    OTEL_EXPORTER_OTLP_ENDPOINT=https://otlp.iapm.app
    OTEL_EXPORTER_OTLP_HEADERS=API-Key=YOUR-API-KEY
    ```

    **Or programmatically:**

    ```go
    import "go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc"

    exporter, err := otlptracegrpc.New(ctx,
        otlptracegrpc.WithEndpoint("otlp.iapm.app"),
        otlptracegrpc.WithHeaders(map[string]string{
            "API-Key": "YOUR-API-KEY",
        }),
    )
    ```

    [Go OpenTelemetry Docs](https://opentelemetry.io/docs/languages/go/){ target="_blank" }

## What Gets Collected

Once configured, OpenTelemetry automatically captures:

- **Traces** - Request flows across services
- **Metrics** - Performance measurements (latency, throughput, errors)
- **Logs** - Application log events (when configured)

## Verify It's Working

1. Deploy or run your instrumented application
2. Generate some traffic (make a few requests)
3. Open [portal.iapm.app](https://portal.iapm.app){ target="_blank" } and select your grid
4. Click **Enter** to see your telemetry data

!!! tip "Not seeing data?"
    - Verify your API key is correct
    - Check that your application can reach `https://otlp.iapm.app`
    - Ensure OpenTelemetry packages are installed and configured
    - Look for errors in your application logs

## Next Steps

- [View your data in IAPM Web](../../../Products/IAPM-Web/index.md)
- [Explore in 3D with IAPM Desktop](../../../Products/IAPM-Desktop/index.md)
- [OpenTelemetry Language SDKs](https://opentelemetry.io/docs/languages/){ target="_blank" }
