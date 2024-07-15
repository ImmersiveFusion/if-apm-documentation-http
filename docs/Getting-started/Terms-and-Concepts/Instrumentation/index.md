# Instrumentation

{!template/subscription-required.mdp!}

Immersive APM offers support for the [OpenTelemetry](../Observability/Frameworks/OpenTelemetry/index.md) [observability framework](../Observability/index.md). This is the most common and easiest configuration for customers to get started.

The process is called [instrumentation](https://opentelemetry.io/docs/concepts/instrumentation/) and [OpenTelemetry](../Observability/Frameworks/OpenTelemetry/index.md) provides an exhaustive amount of documentation for many mainstream programming languages. The process of instrumentation with OpenTelemetry involves adding the OpenTelemetry SDK to the application's codebase and configuring it to collect telemetry data. The SDK provides APIs to capture telemetry data from various sources in the application, including traces, metrics, and logs. Once the SDK is integrated into the application, developers can configure it to export the collected telemetry data to various tools and platforms, such as Immersive APM or other observability tools. The OpenTelemetry collector is a component that can be used to receive, process, and export telemetry data from the application.