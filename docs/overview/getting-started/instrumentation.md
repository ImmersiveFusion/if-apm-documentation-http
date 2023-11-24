# Instrumentation 

Immersive APM offers support for the [OpenTelemetry](../observability/open-telemetry.md) [observailbity framework](../observability). This is the most common and easiest configuration for customers to get started.

The process is called [instrumentation](https://opentelemetry.io/docs/instrumentation/) and [OpenTelemetry](../observability/open-telemetry.md) provides an exhaustive amount of documentation for many mainstream programming langugages. The process of instrumentation with OpenTelemetry involves adding the OpenTelemetry SDK to the application's codebase and configuring it to collect telemetry data. The SDK provides APIs to capture telemetry data from various sources in the application, including traces, metrics, and logs. Once the SDK is integrated into the application, developers can configure it to export the collected telemetry data to various tools and platforms, such as my.immersivefusion.com or other observability tools. The OpenTelemetry collector is a component that can be used to receive, process, and export telemetry data from the application.

After instrumentation is completed Immersive APM will start collecting telemetry data from the software application to gain insights into its performance, behavior, and usage. This data can then be seen in the [Immersive APM Web](../apm/web.md) and [Immersive APM 3D/VR](../apm/3d.md) clients. 


## Summary

Instrumentation with the OpenTelemetry observability framework is a powerful tool for collecting telemetry data from software applications. It allows developers to use [Immersive APM Web](../apm/web.md) and [Immersive APM 3D/VR](../apm/3d.md) clients and gain valuable insights into the application's performance, behavior, and usage, and make data-driven decisions to improve the application's functionality and user experience.
