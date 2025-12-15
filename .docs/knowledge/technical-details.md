# Technical Details

## Application Technology Stack

### 3D/VR Client
- **Engine:** Unity 6 game engine
- **Runtime:** .NET 9.0
- **Platform:** Desktop application
  - **Windows:** Primary support (MSI installer, 1.5GB)
  - **Mac:** Experimental support
  - **Linux:** Platform support available
- **VR Hardware:**
  - HTC Vive
  - Meta Quest (2, 3, Pro)
- **AI Features:** GPT-based AI Copilot (chat and voice)

### Web/Mobile Client
- **Framework:** Angular (inferred from context)
- **Backend:** ASP.NET Core (inferred)
- **Deployment:** Azure Web Apps
- **Authentication:**
  - Entra ID (Azure AD) - azure.iapm.app
  - Local/Social (email, Google, Microsoft) - my.iapm.app

### Supporting Services
- **Chaos Simulator:** OpenTelemetry demo application (Angular)
  - URL: demo.iapm.app
  - Purpose: Generate sample telemetry for testing
- **OTLP Endpoint:** otlp.iapm.app
  - Protocol: OpenTelemetry Protocol (OTLP)
  - Authentication: API key-based

### Cloud Infrastructure
- **Platform:** Microsoft Azure
- **Services Used:**
  - Azure Static Web Apps (documentation site)
  - Azure Blob Storage
  - Azure Web Apps
  - Entra ID (authentication)
- **Geographic:** Global availability with data residency policies

## OpenTelemetry Integration

### Supported Languages
Documentation includes instrumentation examples for:
- **.NET / C#** - Primary focus
- **Java** - Enterprise applications
- **Python** - Data science and backend
- **Go** - Cloud-native microservices
- **Node.js** - JavaScript backend

### Telemetry Types
- **Traces:** Distributed request tracing
- **Metrics:** Performance measurements
- **Logs:** Application logging

### Instrumentation Approach
- **Automatic Instrumentation:** Framework auto-detection
- **Manual Instrumentation:** Custom spans and metrics
- **SDK Configuration:** OTLP endpoint, API keys, resource attributes

### Data Flow
```
Application (OpenTelemetry SDK)
    ↓ OTLP (HTTP/gRPC)
otlp.iapm.app (Collection Endpoint)
    ↓ Processing & Storage
Immersive APM Backend
    ↓ Query & Visualization
Web/Mobile Client OR 3D/VR Client
```

## Version History Highlights

### 3D/VR Client Evolution

**v1.10.0** (Latest)
- Enhanced AI Copilot features
- Improved VR interactions

**v1.9.x Series**
- Stability improvements
- Performance optimizations

**v1.8.0**
- Major feature additions

**v1.7.x Series**
- Bug fixes and refinements

**v1.6.x Series**
- Iterative improvements

**v1.5.x Series**
- Early production releases

**v0.8.6** (Initial)
- First documented release

### Web/Mobile Client Evolution

**v3.34.x** (Latest)
- Current production version

**v3.33.0 - v3.25.0**
- Progressive feature additions
- UI/UX improvements

## System Requirements

### 3D/VR Client
- **.NET 9.0:** Required runtime
- **Unity 6:** Game engine (bundled)
- **Storage:** ~1.5GB for Windows installation
- **VR Headsets (optional):**
  - HTC Vive (minimum specs)
  - Meta Quest 2/3/Pro
- **Operating Systems:**
  - Windows (primary support)
  - macOS (experimental)
  - Linux (platform support)

### Web/Mobile Client
- **Modern Browser:** Chrome, Firefox, Safari, Edge
- **Internet Connection:** Required for cloud access
- **Responsive Design:** Desktop and mobile devices

## Authentication & Security

### Authentication Methods

**Entra ID (azure.iapm.app):**
- Office 365 / Microsoft 365 accounts
- Azure AD organizational accounts
- Enterprise SSO integration

**Local & Social (my.iapm.app):**
- Email/password accounts
- Google OAuth
- Microsoft personal accounts
- Social login providers

### API Key Management
- **Creation:** Through web portal
- **Usage:** OTLP endpoint authentication
- **Security:** Secure key storage and rotation
- **Scope:** Environment and grid-level permissions

### Data Security
- **Encryption:** In-transit and at-rest
- **Compliance:** Industry standards (documented in legal section)
- **Data Residency:** Geographic storage policies
- **Access Control:** Tenant-based isolation

## Multi-Tenancy Architecture

### Organizational Structure
```
Organization
  └── Tenant(s)
      └── Subscription(s)
          └── Environment(s)
              └── Grid(s)
                  └── Applications
```

**Tenant:** Top-level organizational boundary
**Subscription:** Billing and resource allocation
**Environment:** Dev/Staging/Production separation
**Grid:** Monitoring scope (application groupings)

## Visualization Features

### 3D/VR Client Capabilities
- **Topology Graphs:** 3D application architecture visualization
- **Real-Time Telemetry:** Live performance data overlay
- **Immersive Navigation:** VR controller-based movement
- **AI Copilot:** Chat and voice interaction for insights
- **Hall of Supporters:** VR recognition space (Buzludja Monument theme)

### Web/Mobile Client Capabilities
- **Dashboard Views:** Traditional metrics and charts
- **Trace Visualization:** Distributed request traces
- **Log Analysis:** Searchable log aggregation
- **Real-Time Monitoring:** Live data updates
- **Historical Analysis:** Time-based data exploration

## Integration Ecosystem

### OpenTelemetry Compatibility
- **Vendor-Neutral:** No proprietary agents
- **Standard Protocol:** OTLP (HTTP/gRPC)
- **Auto-Instrumentation:** Framework support
- **Custom Instrumentation:** Flexible SDK

### Azure Marketplace
- **Listing:** Available in Azure Marketplace
- **Billing Integration:** Azure subscription billing
- **Deployment:** One-click provisioning

### Community Tools
- **Chaos Simulator:** Demo application for testing
- **Cost Calculator:** Excel/Google Sheets templates
- **Documentation:** Comprehensive guides and samples

## Performance Characteristics

### Scalability
- Cloud-native SaaS architecture
- Distributed data collection
- Multi-tenant isolation
- Elastic resource allocation

### Real-Time Capabilities
- Live telemetry streaming
- Sub-second data latency
- Interactive 3D/VR rendering
- Responsive web interface

## Development Tools

### Documentation Development
- **MkDocs:** Static site generation
- **Python 3.12+:** Build environment
- **PowerShell Scripts:** Automation (Windows focus)
- **Git:** Version control
- **Visual Studio Code:** Likely editor (based on IDE context)

### Application Development
- **Unity Editor:** 3D/VR client development
- **Visual Studio:** .NET development
- **.NET SDK:** Application runtime
- **Angular CLI:** Web client development (inferred)
