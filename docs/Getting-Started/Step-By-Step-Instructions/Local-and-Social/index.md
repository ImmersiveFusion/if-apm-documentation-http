# Local and Social Account Setup

Use an email address or social login (Google, GitHub) to access IAPM.

## Prerequisites

!!! info "Optional Reading"
    New to observability? These concepts will help you get the most from IAPM:

    - [Observability](../../../Resources/Terms-and-Concepts/Observability/index.md) - The three pillars of monitoring
    - [APM Basics](../../../Resources/Terms-and-Concepts/APM/index.md) - Application performance management fundamentals
    - [IAPM](../../../Resources/Terms-and-Concepts/IAPM/index.md) - How IAPM visualizes telemetry data

## Step 1: Create Your Account

[Quick Start :material-rocket-launch:](https://portal.iapm.app){ .md-button .md-button--primary target="_blank" }

## Step 2: Get Your API Key

After creating your account, you'll have a [grid](../../../Setup/Account/index.md#grid) - your telemetry data container.

1. Go to your grid management page
2. Click the **Instrument** button
3. Copy your API key

Log in at [portal.iapm.app](https://portal.iapm.app){ target="_blank" }, then go to **Administration → Grids**.

## Step 3: Instrument Your Application

Add your API key to your OpenTelemetry OTLP exporter configuration:

    # Example OTLP exporter configuration
    exporters:
      otlp:
        endpoint: "https://otlp.iapm.app"
        headers:
          "API-Key": "your-api-key-here"

[View Full Examples :material-code-tags:](../../../Setup/Custom-application/Instrument-your-application/index.md){ .md-button .md-button--primary }

!!! tip "New to OpenTelemetry?"
    Check the official [Language APIs and SDKs](https://opentelemetry.io/docs/languages/){ target="_blank" } for instrumentation guides in your programming language.

## Step 4: Visualize Your Data

Once telemetry is flowing, explore your application:

### IAPM Desktop (3D/VR)

Enter the World of Your Application® with mouse and keyboard or a VR headset.

[Install Desktop :material-download:](../../../Products/IAPM-Desktop/Guides/Installation/index.md){ .md-button .md-button--primary }
[Desktop Documentation :material-book-open:](../../../Products/IAPM-Desktop/index.md){ .md-button }

### IAPM Web (Browser)

Access dashboards, alerts, and account management from any browser.

[Open IAPM Web :material-web:](https://portal.iapm.app){ .md-button .md-button--primary target="_blank" }
[Web Documentation :material-book-open:](../../../Products/IAPM-Web/index.md){ .md-button }
