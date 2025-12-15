# Navigation & Controls

<!-- TODO: Verify all keyboard shortcuts are accurate for current IAPM version -->

Master the controls to move through your application's 3D environment efficiently. IAPM supports both desktop and VR navigation modes.

| Icon | Meaning |
|------|---------|
| :material-clock: | Coming soon |
| :material-lock: | Not yet configurable |

## Desktop Controls

### Movement

| Action | Keys | Description | Status |
|--------|------|-------------|--------|
| Move Forward | `W` or hold both mouse buttons | Move toward where you're looking or move and turn if holding both buttons | |
| Move Backward | `S` | Move away from where you're looking | |
| Strafe Left | `A` | Slide left while maintaining view direction | |
| Strafe Right | `D` | Slide right while maintaining view direction | |
| Move Up | `Space` | Rise vertically in the environment | :material-lock: |
| Move Down | `Ctrl` | Descend vertically in the environment | :material-lock: |
| Sprint | `Shift` + movement | Move faster in any direction | |

### Camera & View

| Action | Control | Description |
|--------|---------|-------------|
| Look Around | Right mouse button + drag | Rotate your view in any direction |
| Zoom In | Scroll wheel up | Get closer to objects |
| Zoom Out | Scroll wheel down | See more of the environment |
| Reset View | `Home` | Return to default camera position |

### Selection & Interaction

| Action | Control | Description | Status |
|--------|---------|-------------|--------|
| Select | Left-click | Interact with world object | |
| Context Menu | Right-click | Show available actions | :material-clock: |
| Deselect | `Escape` | Clear current selection | |
| Follow Trace | — | Animate along the request path | :material-clock: |

### UI & Panels

| Action | Keys | Description | Status |
|--------|------|-------------|--------|
| Toggle AI Copilot | `C` | Open/close the AI assistant panel | :material-clock: |
| Toggle Metrics | — | Show/hide metrics overlay | :material-lock: |
| Toggle Logs | `L` | Show/hide log panel | :material-clock: |
| Toggle Traces | `T` | Show/hide trace details | :material-clock: |
| Toggle Grid View | `M` | Switch to grid layout | |
| Toggle Graph View | `N` | Switch to graph layout | |

## VR Controls

### HTC Vive

See [HTC Vive Integration](../../Integrations/HTC-Vive/index.md) for detailed setup.

| Action | Control | Description |
|--------|---------|-------------|
| Teleport | Trackpad press + aim + release | Move to pointed location |
| Select | Trigger | Select service or UI element |
| Grab | Grip buttons | Grab and manipulate objects |
| Menu | Menu button | Open radial menu |
<!-- | AI Copilot | Grip + voice | Activate voice assistant | -->

### Meta Quest

See [Meta Quest Integration](../../Integrations/Meta-Quest/index.md) for detailed setup.

| Action | Control | Description |
|--------|---------|-------------|
| Teleport | Thumbstick + release | Move to pointed location |
| Select | Trigger | Select service or UI element |
| Grab | Grip | Grab and manipulate objects |
| Menu | Menu button | Open radial menu |
<!-- | AI Copilot | Press A + speak | Activate voice assistant | -->

## Navigation Tips

### Understanding Visual Indicators

| Indicator | Meaning |
|-----------|---------|
| Green glow | Healthy service |
| Yellow glow | Elevated latency |
| Orange glow | High latency or error rate |
| Red glow | Critical issues |
| Pulsing lines | Active request flow |
| Thick lines | High throughput |
| Dashed lines | Intermittent connections |

### Grid View

A structured, organized layout where services are arranged in a grid pattern.

<!--
**Best for:**

- Large systems with many services
- Comparing metrics across services
- Finding specific services quickly
- Presentations and screenshots

**Features:**

- Services arranged in orderly rows and columns
- Consistent spacing for easy scanning
- Sort by name, latency, error rate, or throughput
- Filter to show only specific service types
- Clear labels visible at all zoom levels

 **Controls:**

| Action | Control | Description |
|--------|---------|-------------|
| Sort Services | `S` then select criteria | Reorder grid by metric |
| Filter | `F` then type | Show matching services |
| Group By | `G` + `1-4` | Group by namespace/type/status/custom | 
-->

### Graph View

A dynamic, force-directed layout showing actual service relationships and dependencies.

<!-- **Best for:**

- Understanding service dependencies
- Tracing request flows
- Identifying architectural patterns
- Troubleshooting cascading failures

**Features:**

- Services positioned by their connections
- Connected services cluster together
- Request flows visualized as animated paths
- Dependency depth visible at a glance
- Isolated services stand out visually

**Controls:**

| Action | Control | Description |
|--------|---------|-------------|
| Pin Service | `P` on selected | Lock position in space |
| Unpin All | `Shift` + `P` | Release all pinned services |
| Expand Cluster | Double-click cluster | Show hidden services |
| Collapse Cluster | `Shift` + double-click | Group related services | -->

### Switching Views

| Action | Control |
|--------|---------|
| Toggle Grid View | `M` |
| Toggle Graph View | `N` |

<!-- 
## Camera Modes

### Free Flight (Default)

Move freely in any direction. Best for exploring and getting an overview of your system.

### Orbit Mode

Press `O` to orbit around a selected service. Useful for examining a specific service from all angles.

### Follow Mode

Press `F` after selecting a trace to follow requests through your system. The camera automatically tracks the data flow.

### Top-Down Mode

Press `2` for a birds-eye view of your topology. Good for seeing the overall architecture.

### First-Person Mode

Press `1` to return to standard first-person navigation.
 -->

## Keyboard Shortcuts Reference

### Movement Keys

| Key | Action |
|-----|--------|
| `W` | Forward |
| `S` | Backward |
| `A` | Left |
| `D` | Right |
| `Space` | Up |
| `Ctrl` | Down |
| `Shift` | Sprint |

### Camera

| Key | Action |
|-----|--------|
| Mouse | Look around |
| Scroll | Zoom |
<!-- 
| `Home` | Reset view |
| `O` | Orbit mode |
| `F` | Follow mode |
| `1` | First-person |
| `2` | Top-down | 
-->

### Selection

| Key | Action |
|-----|--------|
| Click | Select |
| `Esc` | Deselect |
| Double-click | Follow trace |
<!-- 
### Panels

| Key | Action |
|-----|--------|
| `C` | AI Copilot |
| `M` | Metrics |
| `L` | Logs |
| `T` | Traces |

### Tools

| Key | Action |
|-----|--------|
| `/` | Search |
| `B` | Bookmark |
| `N` | Minimap | -->

### General

| Key | Action |
|-----|--------|
| `F12` | Console |
| `F10` | Preferences |

<!-- 
## Accessibility

### Motion Sensitivity

If you experience motion sensitivity:

1. Go to **Preferences** (`P`)
2. Navigate to **Comfort** settings
3. Enable **Reduced Motion** mode
4. Adjust **FOV** (Field of View) to a comfortable level
5. Enable **Snap Turning** for VR (discrete rotation instead of smooth)

### Controller Remapping

Custom key bindings can be configured in **Preferences** > **Controls** > **Key Bindings**. -->

## Related

- [Preferences](../Preferences/index.md) - Customize controls and display settings
- [AI Copilot](../../Features/AI-Copilot.md) - Voice and chat interaction
- [VR Integrations](../../Integrations/index.md) - Headset-specific guides
