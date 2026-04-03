# IAPM (3D & VR) Release Notes

## Version History

### 1.12.0 <small>April 3, 2026</small> { id="1.12.0" }

**Introduction:**

This release brings the Skills system to the 3D client, enabling extensible AI capabilities, along with multimodal vision support that lets users paste screenshots directly into prompts. It also achieves client parity with IAPM Studio for memory, orchestration, and context preservation.

**New Features:**

- **Skills System**: Extensible skill agent registry with catalog injection, enabling modular AI capabilities.
- **Multimodal Vision**: Paste screenshots with Ctrl+V for visual prompts, allowing Tessa to analyze images alongside text.
- **Composite Diagnostics Tools**: New diagnostic and competitive analysis tools for Tessa, providing richer troubleshooting insights.

**Improvements:**

- Client parity with IAPM Studio: Memory.Local, Orchestration, and Context Preservation support.
- Migrated filter system from legacy messages to ADX DTOs.
- Added unit tests for all 28 assistant tools.
- Updated IF.Assistant to 1.17.0.
- Migrated to shared CI pipeline templates for Semgrep, Stryker, and Gitleaks.

### 1.11.0 <small>March 21, 2026</small> { id="1.11.0" }

**Introduction:**

This release completes the migration to an OpenTelemetry-native data model, replacing legacy TraceMessage and LogMessage types with standard Span and Log representations throughout the visualization pipeline. The service graph receives further refinements with warming periods and improved placement algorithms.

**New Features:**

- **OpenTelemetry-Native Pipeline**: Full migration to OTEL proto consumption with Span/Log DTOs across all 33+ visualization files.

**Improvements:**

- Service graph: warming period with batch cascade graduation for smoother facility placement.
- Typed enrichment generics and live stage label updates on blocks.
- Assistant tools aligned to latest API with ToolBase and rich LLM descriptions.
- Improved tooltip providers and enrichment controls.
- Authorization guard for grid access.

**Bug Fixes:**

- Fixed trace blocks stopping after ADX migration due to stage mapping issues.
- Fixed service graph node physics settling and position release.
- Fixed null TraceId warnings downgraded to debug level.

### 1.10.0 <small>January 25, 2026</small> { id="1.10.0" }

**Introduction:**

This release introduces the live force-directed service graph, a real-time 3D visualization of service dependencies with physics-based layout and animated traffic pulses. Major performance improvements resolve block rendering bottlenecks, and the AI chat system adopts a secure backend proxy architecture.

**New Features:**

- **Live Service Graph**: Force-directed 3D graph with edge congestion visuals, error pulse coloring, and physics-based node settling.
- **Tracegen Demo Tool**: Built-in telemetry generator with 20 services and 15 scenarios for exploring the product without live data.
- **Energy System UI**: Energy bar with tier-aware capability gating and experience state display.

**Improvements:**

- Adopted secure backend proxy for AI chat, replacing direct API calls.
- Replaced browser-based authentication with direct library integration.
- WebSocket bus tunnel for improved real-time communication.
- Speech interrupt with Escape key without losing the prompt queue.
- Unified logging with Serilog file sink replacing Unity console logger.
- Expanded unit test coverage to 1,997+ tests across 22 projects.
- Updated to IF.Assistant 1.5.x with thinking and spoken channels.

**Bug Fixes:**

- Fixed block rendering bottleneck causing 4-9 FPS under load.
- Fixed memory leaks: disposed MemoryCache, removed shadow collections, eliminated per-frame allocations.
- Fixed DeepCube span/log scaling, bleeding, and deduplication.
- Fixed lobby flickering on authentication.
- Fixed empty streaming response with Polly retry and fallback.
- Fixed WAV decoder UTF-8 crash in TTS audio responses.

**Known Issues:**

- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.9.0 <small>September 11, 2025</small> { id="1.9.0" }

**Introduction:**

This release marks a major milestone for Immersive APM with the debut of the **AI Assistant**, the first integrated GPT-powered assistant. Users can now interact with their telemetry data using **natural language**, via **chat or voice**, to explore performance metrics, investigate anomalies, and generate insights without writing a single query. Also introduced is the Diagnostics Room for immersive trace visualization, a redesigned grid picker, and environmental exploration features including swimming and portal teleportation.

**New Features:**

- **AI Assistant (Tessa)**: Chat and voice-driven assistant for root cause analysis, performance exploration, and guided troubleshooting using natural language.
    - Streaming speech with smart chunking and audio prefetching.
    - Natural conversation flow with hybrid turn detection.
    - `/mute`, `/unmute`, and `/listen` voice toggle commands.
    - Location-aware context: Tessa knows which room you are in and adapts her responses.
    - Session persistence: chat history is saved and restored across sessions.
    - Built-in help section for onboarding new users.
- **Diagnostics Room**: Immersive trace visualization environment for exploring spans and logs in 3D space with proper time-scale layouts.
- **Energy System**: Energy bar showing AI assistant usage with tier-aware capability levels.
- **Grid Picker Redesign**: Card-based grid selection UI replacing the previous two-dropdown flow.
    - Demo grid support for exploring the product without live data.
- **ProTips Guidance System**: Context-aware tooltips with auto-hide and configurable display settings.
- **WhereAmI Wayfinding Display**: On-screen indicator showing your current room and location.
- **Water Environment**: Swimming mechanics for enhanced world exploration.

**Improvements:**

- Initial support for **macOS (experimental)**.
- **Teleportation overhaul**: Teleport from trace blocks and viewport controls, portal tunnel effects with tesseract warp animation.
- Enhanced real-time traffic visualization on performance graphs.
- Improved rendering quality and scalability across device profiles.
- Overhead camera with adjustable height for top-down views.
- Upgraded to **Unity 6000.3.8f1**.
- Improved connection reliability and clearer error messaging on connection failures.
- Additional code signing for authentication DLLs.

**Bug Fixes:**

- Fixed Diagnostics Room time scale calculation for proper span layout.
- Fixed avatar getting stuck swimming after teleporting out of the Diagnostics Room.
- Fixed portal teleportation causing character to fall through ground.
- Fixed grid connection and initialization bugs.
- Fixed context switching when navigating between rooms.
- Fixed speech interruption causing stalled prompt queue.
- Fixed crouching animation.

**Known Issues:**

- Authentication still requires browser-based Entra ID flow.
- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.8.0 <small>April 15, 2025</small> { id="1.8.0" }

**Introduction:**

This release includes the addition of the [Buzludzha Monument](https://en.wikipedia.org/wiki/Buzludzha_monument) video and panels for more details. Materials are courtesy of the [Buzludzha Project](https://buzludzha-project.com/en/?source=if). The Buzludzha Monument, reimagined as the [Hall of Supporters](../../Resources/Partner/Hall-of-Supporters/index.md) in Immersive Fusion's 3D/VR world, is a powerful symbol of renewal, bridging a historic vision of Application Performance Management (APM) with a revolutionary new approach.

**Improvements:**

- .NET 9.0 rollup

**Known Issues:**

- Users still have to provide their authentication information in a browser. This is a standard Entra ID flow. We know it's not ideal ;(

### 1.7.0 <small>March 15, 2025</small> { id="1.7.0" }

**Introduction:**

This release includes an update the authentication utility.

**Improvements:**

- .NET 9.0 rollup

**Known Issues:**

- Users still have to provide their authentication information in a browser. This is a standard Entra ID flow. We know it's not ideal ;(

### 1.6.0 <small>January 15, 2025</small> { id="1.6.0" }

**Introduction:**

This release includes several new features, improvements, and bug fixes to enhance the user experience and performance of IAPM.

**New Features:**

- Top view updates with automatic zoom
- *Live Charts!* - Published/Processed/Failed/Lost counts in the Core
- Added Default/Grid/Graph buttons
- Added UI disable when idle

**Improvements:**

- Changed to using time bar chart for grid view. Spiral view is hidden for the moment
- Accounted for OTLP Exporter delays due to buffering
- Improved process cube creation rates and FPS guards
- Updated platform tooltips to show the name of the application and the operation count

**Bug Fixes:**

- Fixed bug that crashes client on exit
- Fixed issue where platforms did not have tooltips

**Known Issues:**

- Filters UI is being developed

**Installation & Upgrade Instructions:**

- Get the [latest build](./Guides/Installation/index.md) and run the MSI. An existing version Immersive APM will be upgraded.

### 1.5.0 <small>December 16, 2024</small> { id="1.5.0" }

**Introduction:**

This release focuses on various fixes and the introduction of beta VR functionality.

**New Features:**

- Added `BETA VR Functionality` warning

**Improvements:**

- Various topology graph reactive and ambience fixes
- Changed out-of-range block colors to have glow

**Bug Fixes:**

- Fixed XR/HMD awareness issues
- Fixed XR UX issues and added tooltips

**Known Issues:**

- Filters UI is being developed
- *Client crashes on exit*

**Installation & Upgrade Instructions:**

- Get the [latest build](./Guides/Installation/index.md) and run the MSI. An existing version Immersive APM will be upgraded.

### 1.4.0 <small>November 1, 2024</small> { id="1.4.0" }

- Teleport fixes
- Added **Reload current grid** button to grid to reload the grid and fix potential world issues
- Added service name and instance ID on platforms
- Added operation count on platforms
- Process/dependency virtual differentiation

Bug fixes:

- Fixed Platform colors
- Fixed Platform teleport functionality
- Fixed photon coloring and visibility
- Various Hall of Supporters fixes
- Fixed 3D/VR Avatar scale and head issues
- Fixed various framerate issues

### 1.3.0 <small>October 10, 2024</small> { id="1.3.0" }

- Unity 6 upgrade
- Minor shader fixes after upgrade
- Context menu prep
- Teleport to platform prep

### 1.2.2 <small>September 13, 2024</small> { id="1.2.2" }

Bug fixes:

- Fixed bug: Trace/process camera zooms
- Fixed bug: Log tooltips

### 1.2.1 <small>September 10, 2024</small> { id="1.2.1" }

- Fixed bug: generic avatar interactive and proximity zones fixed
- Fixed bug: ground spacing fixed

### 1.2.0 <small>September 10, 2024</small> { id="1.2.0" }

- Replacing female avatar with ragdoll. She's not gone and will be back!
- Added areal views for traces/logs and processes

### 1.1.0 <small>September 3, 2024</small> { id="1.1.0" }

- Local storage prep for replay

Bug fixes:

- Fixed bug: modal dialogs overlapping each other

### 1.0.0 <small>August 26, 2024</small> { id="1.0.0" }

- Public release


### 0.9.2 <small>July 29, 2024</small> { id="0.9.2" }

- Unity upgrade
- Stability and perf improvements

### 0.8.7 <small>July 16, 2024</small> { id="0.8.7" }

- Performance, stability, UI improvements
- Fixed pulses from platforms.
- Changed to `blue sky with clouds` sky.

### 0.8.6 <small>July 2, 2024</small> { id="0.8.6" }

- Performance, stability, UI improvements

[//]: # (GitHub Issue example - Fixed #7313: Improved tooltips mounted in sidebar when feature is disabled)
