# IAPM Studio Release Notes

!!! warning "Early Access"
    IAPM Studio is in early access. Features and interfaces may change between releases.

## Version History

### 0.7.0 <small>April 3, 2026</small> { id="0.7.0" }

**Introduction:**

This release adds multimodal vision support, enabling users to paste images directly into prompts for visual analysis. The Skills and Memory systems bring IAPM Studio to parity with the 3D client for AI assistant capabilities.

**New Features:**

- **Multimodal Vision**: Paste images into prompts for visual analysis by Tessa. Supports image-only paste with automatic default prompt.
- **Skills System**: Skill agent registration and catalog for extensible AI capabilities.
- **Memory and Context Preservation**: Local memory storage and context preservation across sessions.

**Improvements:**

- Updated IF.Assistant packages to 1.17.0.
- Added unit test project with 107 tests.
- Renamed log file convention to dc-studio for consistency.

### 0.5.0 <small>March 27, 2026</small> { id="0.5.0" }

**Introduction:**

This release introduces multi-tab chat with split pane support, allowing users to run multiple AI conversations side by side. Session persistence ensures conversations survive application restarts, and the file tree now includes workspace context visibility.

**New Features:**

- **Multi-Tab Chat**: Multiple simultaneous AI conversations with per-tab assistant instances.
- **Split Pane View**: Dynamic N-pane split layout with drag-to-reorder and drag-to-split support.
- **Session Persistence**: Chat sessions saved to disk and restored across application restarts.
- **File Tree Enhancements**: Workspace context visible in file tree with right-click Copy Path menu.

**Improvements:**

- Improved status feedback with welcome banner replacing generic greeting.
- Active agent count displayed in context bar.
- Full tool results shown (up to 2,000 characters) instead of truncated previews.
- Markdown rendering with bundled markdown-it library.

**Bug Fixes:**

- Fixed Escape key to properly cancel active requests.
- Fixed TTS stop on Escape to call Shell.StopSpeaking().
- Fixed workspace switching and session restoration by name.
- Fixed double-nested session directory layout.

### 0.1.0 <small>March 16, 2026</small> { id="0.1.0" }

**Introduction:**

Initial early access release of IAPM Studio, a cross-platform desktop application for interacting with Immersive APM telemetry through an AI-powered chat interface. Built with Avalonia for native performance on Windows, macOS, and Linux.

**New Features:**

- **AI Chat Interface**: WebView-based chat with Tessa for natural language telemetry exploration.
- **Cross-Platform Desktop App**: Native Avalonia application with MSI installer for Windows.
- **Workspace Management**: File tree navigation and workspace switching.
