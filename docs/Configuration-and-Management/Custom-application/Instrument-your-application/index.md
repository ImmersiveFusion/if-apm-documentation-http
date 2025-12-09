# Instrument your application

{!template/subscription-required.mdp!}

Immersive APM offers support for the [OpenTelemetry](../../../Resources/Terms-and-Concepts/Observability/Frameworks/OpenTelemetry/index.md) [observability framework](../../../Resources/Terms-and-Concepts/Observability/index.md). This is the most common and easiest configuration for customers to get started.

The process is called [instrumentation](https://opentelemetry.io/docs/instrumentation/) and [OpenTelemetry](../../../Resources/Terms-and-Concepts/Observability/Frameworks/OpenTelemetry/index.md) provides an exhaustive amount of documentation for many mainstream programming languages. The process of instrumentation with OpenTelemetry involves adding the OpenTelemetry SDK to the application's codebase and configuring it to collect telemetry data. The SDK provides APIs to capture telemetry data from various sources in the application, including traces, metrics, and logs. Once the SDK is integrated into the application, developers can configure it to export the collected telemetry data to various tools and platforms, such as Immersive APM or other observability tools. The OpenTelemetry collector is a component that can be used to receive, process, and export telemetry data from the application.

After instrumentation is completed Immersive APM will start collecting telemetry data from the software application to gain insights into its performance, behavior, and usage. This data can then be seen in the [Immersive APM Web](../../../Analysis-and-Visualization/Web-and-Mobile/index.md) and [Immersive APM 3D/VR](../../../Analysis-and-Visualization/3D-and-VR/index.md) clients. 

![Instrument](../img/instrument.png)

The final piece is to specify your OTLP endpoint and API key. The code to do so will look different based on the language your application is written in. Here's C# example. Supply the API key to your application and deploy it. That's it!

C# example:

```csharp
.AddOtlpExporter(o =>
{
    o.Endpoint = new Uri("https://otlp.iapm.app");// i.e. this.Configuration["IfApmOtlpEndpoint"]
    o.Headers = $"API-Key=IF-API-KEY-HERE";// i.e. {this.Configuration["IfApmAPIKey"]}
});
```

# Are you ready?

[Get Started Today!](../../../Getting-Started/index.md){:class="md-button md-button--primary"}