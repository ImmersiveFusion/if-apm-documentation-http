# IAPM (3D & VR) Release Notes

## Version History

### 1.15.0 <small>May 8, 2026</small> { id="1.15.0" }

**Introduction:**

Mosey graduates from preview to a full in-world presence. You can now switch workspaces from voice or the console without leaving the world, the radial menu reorganizes around how you actually work (Help, Quick Read, Deep Analysis), and gamepad players get a proper on-screen cursor with orbit-on-stick movement. Mosey also picks up a richer set of idle behaviors that make the world feel less empty during long sessions.

**New Features:**

- **Voice and Console Workspace Switching**: Say or type a workspace command to switch grids without opening the picker. The world reloads cleanly with the new workspace context.
- **Three-Bucket Mosey Menu**: The radial menu reorganizes around intent: Help, Quick Read, and Deep Analysis. Workspace-aware Security and Research entries appear when relevant, and GenAI Cost shows up in trace context.
- **Gamepad Cursor and Stick Orbiting**: A screen-center reticle gives gamepad players a true cursor for in-world targeting. Pushing the right stick now activates orbiting around the focal point.
- **Mosey Idle Behaviors**: Mosey now wanders, plays small skits, picks up props, and chatters while you work, with smoother pose recovery and tilt handling.

**Improvements:**

- Mosey menu prefills the console for quick edits before send, and surfaces an active-context diagnostic so you can see what Mosey is reasoning over.
- Empty-slice handling and recall easing polish the radial menu interaction.
- Mosey is disabled by default until you opt in.

**Bug Fixes:**

- Fixed Mosey getting stuck in poses or tilted after rapid prop interactions.
- Fixed input-action bleed when the radial menu opened or closed mid-action.

**Known Issues:**

- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.14.11 <small>April 24, 2026</small> { id="1.14.11" }

**Introduction:**

A series of stabilization patches across the 1.14.x line, focused on Windows installer reliability, in-world polish, and an early look at Mosey that lands properly in 1.15.0. If you are upgrading from 1.14.0, this is the recommended 1.14.x build to install.

**Improvements:**

- **Smaller, More Reliable Windows Installer**: Reworked the Windows installer payload so large worlds package and install reliably on all Windows configurations.
- **Refreshed Installer Branding**: New Windows installer dialog and banner artwork, with the installer, Start Menu shortcut, and app all consistently named **IAPM**.
- **macOS Disk Image Distribution**: A new macOS disk image (DMG) flow ships alongside the Windows installer.
- **Mosey Preview**: Early in-world preview of Mosey with idle behaviors, props, and a contextual radial menu. Disabled by default; full release lands in 1.15.0.
- **Service Facility Polish**: Refined service facility content, including overlay menu fixes, tooltip cleanup, and smarter error/log table rendering pulled from receiver buffers.
- **Portal Landing Polish**: Portal teleport landings fall back through to ground reliably, and portal ring orientation faces the hub center correctly.

**Bug Fixes:**

- Fixed graph layout stability with improved bounding box handling and cooling behavior.
- Fixed avatar fall-through after portal teleport.
- Fixed assorted prefab and scale issues across error and log tables.
- Fixed dependency tap-target resolution to use the cell value instead of the row index.

**Known Issues:**

- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.14.0 <small>April 20, 2026</small> { id="1.14.0" }

**Introduction:**

This release delivers a big jump in in-world information density. Services and dependencies now carry their own content screens with error tables, log tables, and cost summaries, and you can tap any table row to teleport directly to the matching facility. A new force-directed service graph replaces the previous physics layout with smoother, more stable placement. Tessa picks up a new visual companion, Mosey, for contextual guidance.

**New Features:**

- **Per-Facility Content Screens**: Services, dependencies, and the root hub each have their own error table, log table, and cost summary screens, pulled live from the telemetry stream.
- **Row-Tap Teleport**: Tap any row in a service, dependency, error, or log table to teleport directly to the corresponding facility.
- **GenAI Cost Visibility**: Dedicated cost summary screens on the root hub, service facilities, and the Diagnostics Room show GenAI spend and token usage at a glance.

**Improvements:**

- **New Service Graph Engine**: The service graph uses a new force-directed layout for smoother transitions, stable node placement, and reliable prevention of ghost nodes.
- **Auto-Flatten Graph**: The graph flattens to 2D when you are in the hub and unfolds to 3D when you approach a facility.
- **Portal Hub Return**: Facility portals now reliably return you to the central hub, with correct orientation and landing position.
- **Loading Screen Timing**: The loading screen now waits for all environment scenes to finish loading before handing off to the world.
- **Paused World**: Pausing the world now freezes the service graph, photons, and physics so you can inspect the scene without motion.
- **Tooltip and Label Polish**: F6 copy hints standardized across tooltips, proximity labels refined, and dependency type now displays database and messaging system details.
- **Installer Packaging**: New Windows Installer (MSI) with dialog and banner graphics, and a new macOS disk image (DMG) distribution flow.

**Bug Fixes:**

- Fixed completed spans being mistakenly classified as lost with inflated durations.
- Fixed ghost nodes appearing in the service graph during high churn.
- Fixed avatar falling through the ground after portal teleport.
- Fixed portal ring orientation so portals face the hub center correctly.
- Fixed graph layout instability with improved bounding box handling and cooling behavior.
- Fixed Diagnostics Room width computation after scene hierarchy changes.
- Fixed numerous trace table and tooltip rendering issues.

**Known Issues:**

- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.12.1 <small>April 5, 2026</small> { id="1.12.1" }

**Introduction:**

This patch refines service context awareness so Tessa can ground her answers in the specific service you are looking at.

**Improvements:**

- Service facilities now carry richer platform context (runtime, operating system, service version) that Tessa can consult when answering questions.
- Refined service context providers for more accurate location and topic awareness.

**Bug Fixes:**

- Fixed an error when the grid selection modal loads before authentication completes.

### 1.12.0 <small>April 3, 2026</small> { id="1.12.0" }

**Introduction:**

This release introduces the Skills system for extensible AI capabilities, multimodal vision for pasting screenshots directly into prompts, and feature parity with IAPM Studio.

**New Features:**

- **Skills**: Tessa can now use modular skills for specialized tasks, with a browsable skill catalog.
- **Multimodal Vision**: Paste screenshots with Ctrl+V and ask Tessa to analyze what you see.
- **Diagnostics Tools**: New diagnostic and analysis tools give Tessa richer troubleshooting insights.

**Improvements:**

- Feature parity with IAPM Studio for memory, orchestration, and context preservation.
- Improved filtering across all telemetry views.

### 1.11.0 <small>March 21, 2026</small> { id="1.11.0" }

**Introduction:**

This release adopts the OpenTelemetry standard data model across the entire visualization pipeline and refines the service graph with smoother placement behavior.

**Improvements:**

- Full adoption of OpenTelemetry-native data model for all trace and log visualizations.
- Service graph now transitions smoothly from startup, with improved node placement.
- Tessa's tools updated with richer descriptions and better accuracy.
- Improved tooltips and stage labels across all views.

**Bug Fixes:**

- Fixed trace blocks occasionally stopping after internal data updates.
- Fixed service graph nodes not settling into stable positions.
- Reduced excessive log noise from missing trace identifiers.

### 1.10.0 <small>January 25, 2026</small> { id="1.10.0" }

**Introduction:**

This release introduces the live service graph, a real-time 3D visualization of service dependencies with animated traffic pulses. Major performance and stability improvements are included, along with a streamlined authentication experience.

**New Features:**

- **Live Service Graph**: Real-time 3D visualization of service dependencies with animated traffic flow, error highlighting, and physics-based layout.
- **Demo Telemetry**: Built-in demo scenarios for exploring the product without connecting live data.
- **Energy System UI**: Energy bar showing AI usage with tier-aware capability levels.

**Improvements:**

- Streamlined authentication (no longer requires a separate browser window).
- Press Escape to interrupt Tessa's speech without losing your prompt queue.
- Significant performance and stability improvements.

**Bug Fixes:**

- Fixed rendering performance under high telemetry load.
- Fixed memory-related stability issues during long sessions.
- Fixed trace visualization scaling and display issues in the Diagnostics Room.
- Fixed lobby flickering during login.
- Fixed voice responses occasionally failing to stream.

**Known Issues:**

- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.9.0 <small>September 11, 2025</small> { id="1.9.0" }

**Introduction:**

This release marks a major milestone for Immersive APM with the debut of **Tessa**, your AI Assistant. Interact with your telemetry data using **natural language**, via **chat or voice**, to explore performance metrics, investigate anomalies, and generate insights without writing a single query. Also new: the Diagnostics Room for immersive trace visualization, a redesigned grid picker, and new ways to explore the world.

**New Features:**

- **AI Assistant (Tessa)**: Chat and voice-driven assistant for root cause analysis, performance exploration, and guided troubleshooting.
    - Ask questions by typing or speaking.
    - `/mute`, `/unmute`, and `/listen` voice toggle commands.
    - Tessa knows which room you are in and adapts her responses.
    - Chat history is saved and restored across sessions.
    - Built-in help section for onboarding new users.
- **Diagnostics Room**: Immersive trace visualization environment for exploring spans and logs in 3D space.
- **Energy System**: Energy bar showing AI assistant usage with tier-aware capability levels.
- **Grid Picker Redesign**: Card-based grid selection replacing the previous dropdown flow.
    - Demo grid support for exploring the product without live data.
- **ProTips**: Context-aware guidance tooltips that help you discover features as you go.
- **WhereAmI Display**: On-screen indicator showing your current room and location.
- **Water Environment**: Swimming mechanics for world exploration.

**Improvements:**

- Initial support for **macOS (experimental)**.
- **Teleportation overhaul**: Teleport from trace blocks, portal tunnel effects with warp animation.
- Enhanced real-time traffic visualization on performance graphs.
- Improved rendering quality and scalability across device profiles.
- Overhead camera with adjustable height for top-down views.
- Improved connection reliability and clearer error messaging.

**Bug Fixes:**

- Fixed trace layout timing in the Diagnostics Room.
- Fixed avatar getting stuck swimming after teleporting.
- Fixed portal teleportation causing character to fall through ground.
- Fixed grid connection and initialization issues.
- Fixed context switching when navigating between rooms.
- Fixed voice interruption causing stalled prompts.
- Fixed crouching animation.

**Known Issues:**

- Authentication still requires a browser-based login flow.
- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.8.0 <small>April 15, 2025</small> { id="1.8.0" }

**Introduction:**

This release includes the addition of the [Spatial Observatory](../../Resources/Partner/Spatial-Observatory/index.md), with video and panels for more details. Materials are courtesy of the [Buzludzha Project](https://buzludzha-project.com/en/?source=if).

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
- Various Spatial Observatory fixes
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
