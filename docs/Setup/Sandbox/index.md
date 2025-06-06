# Sandbox

A sandbox is a testing environment that allows users to try out the functionality of a software application without affecting the production environment or data. A sandbox typically provides a safe and isolated environment where users can experiment with new features, test integrations, and explore the capabilities of Immersive APM. Here are some key aspects of a sandbox environment:

1. Isolation: A sandbox environment is isolated from the production environment, which means that any changes or testing done in the sandbox will not affect the live application or data. This provides a safe and controlled environment for users to test and experiment with new features or integrations.
1. Functionality: Sandboxes typically provide access to all the features and functionality of the application, allowing users to test out specific features or workflows without affecting the production environment. This can be especially useful for software applications that are complex or have a large number of features.
1. Customization: Sandboxes can be customized to meet the specific needs of the user or organization. This may include access to specific data sets, integrations with other applications, or custom configurations of the application.
1. Training: Sandboxes can also be used as a training tool to help users learn how to use the application effectively. By providing a safe and controlled environment for users to practice and experiment, sandboxes can help to improve user confidence and proficiency.

Overall, a sandbox environment provides a safe and controlled environment for users to test and experiment with the features and functionality of a software application with minimal effort. By isolating the sandbox environment from the production environment, users can experiment without fear of affecting the live application or data. Sandboxes can be customized to meet specific needs and can be used as a training tool to improve user proficiency and confidence.


**Immersive Fusion demonstration deployments require no setup effort**. We want to you experience the power of the telemetry and how it can be analyzed and visualized with minimal effort.

## Chaos Simulator

![Immersive Fusion OpenTelemetry Chaos Simulator](img/screenshot.png)

The Immersive Fusion [OpenTelemetry Chaos Simulator](https://github.com/ImmersiveFusion/if-opentelemetry-chaos-simulator-sample){:target="gh"} is an Open Source application that is available at [demo.iapm.app](//demo.iapm.app){:target="if-demo"} It is a simple Angular/ASP.NET Core application that answers the question "What's the point?". It allows you to inject/eject failures into an application and see how those failures affect the telemetry that is generated. It is already pre-configured with an OpenTelemetry exporter so you don't need to change any code or enter any API keys simply log into [Immersive APM for 3D and VR](../../Analysis-and-Visualization/3D-and-VR/index.md) to see the results the actions your perform.

<!-- or [Immersive APM for Web & Mobile](../../../Analysis-and-Visualization/web/)  -->

!!! info "Real-time Only"
    The OpenTelemetry Chaos Simulator currently is enabled only for real-time data. The telemetry generated by it will not be visible in Immersive APM for Web & Mobile.
    

## Individual Sandboxes

A new sandbox is created for you when you access the simulator. You can come back to an existing or make a bookmark if you like. Once the sandbox is loaded, clicking buttons to perform actions or introduce chaos will be available momentarily. 

# Are you ready?

[Get Started Today!](../../Getting-Started/index.md){:class="md-button md-button--primary"}