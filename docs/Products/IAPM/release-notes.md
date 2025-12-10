# Release Notes

## IAPM Desktop

### 1.10.0 - Upcoming Release <small>October 13, 2025</small> { id="1.10.0" }

**Introduction:**

This release marks a major milestone for Immersive APM with the debut of the **AI Copilot**, our first integrated GPT-powered assistant. Users can now interact with their telemetry data using **natural language**, via **chat or voice**, to explore performance metrics, investigate anomalies, and generate insights without writing a single query.

Also introduced is **experimental support for macOS**, allowing developers and analysts on Apple Silicon devices to begin testing Immersive APM in native environments. While not yet feature-complete, this lays the groundwork for full cross-platform parity in future releases.

**Improvements:**

- Introduced **Immersive APM AI Copilot** with GPT integration for chat and voice-based data exploration.
- Initial support for **macOS (experimental)**.
- **Rendering pipeline improvements**:
    - Enhanced **real-time traffic visualization** on performance graphs.
    - Improved **photo rendering fidelity** for embedded media and scene textures.
    - Updated **quality settings** for better scalability across device profiles.
- Added additional **code signing for authentication DLLs** to improve security and integrity validation during deployment.
- Fixed crouching animation.
- Added an overhead camera that zooms in the view and removes the avatar from view.
- Various package updates for Unity game engine.

**Known Issues:**

- Authentication still requires browser-based Entra ID flow.
- macOS support is experimental and may lack full feature parity with Windows builds.

### 1.8.0 <small>April 15, 2025</small> { id="1.8.0" }

**Introduction:**

This release includes the addition of the [Buzludzha Monument](https://en.wikipedia.org/wiki/Buzludzha_monument) video and panels for more details. Materials are courtesy of the [Buzludzha Project](https://buzludzha-project.com/en/?source=if). The Buzludzha Monument, reimagined as the [Hall of Supporters](https://docs.immersivefusion.com/Partner/Hall-of-Supporters/) in Immersive Fusion’s 3D/VR world, is a powerful symbol of renewal, bridging a historic vision of Application Performance Management (APM) with a revolutionary new approach.

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

This release includes several new features, improvements, and bug fixes to enhance the user experience and performance of IAPM Desktop.

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
