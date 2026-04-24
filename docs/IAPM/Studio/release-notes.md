# IAPM Studio Release Notes

!!! warning "Early Access"
    IAPM Studio is in early access. Features and interfaces may change between releases.

## Version History

### 0.8.0 <small>April 16, 2026</small> { id="0.8.0" }

**Introduction:**

This release makes Studio genuinely multi-workspace: every chat tab now binds to its own workspace, so you can work on several projects side by side without cross-talk. A redesigned tool card surface shows Tessa's actions with side-by-side diffs, chat sessions survive restarts, and Studio is now available for both Windows and macOS.

**New Features:**

- **Per-Tab Workspace Binding**: Each chat tab can target a different workspace, with a workspace picker available from the new-tab button and a current-workspace indicator in the status bar.
- **Tool Card UI**: Tessa's tool actions render as expandable cards with side-by-side before/after diffs so you can see exactly what she changed.
- **Session Restore**: Your open tabs and chat history are restored automatically when you reopen Studio.
- **macOS Distribution**: Studio now ships a macOS disk image alongside the Windows installer.

**Improvements:**

- Rebranded app shell to DC Studio with a matching Windows installer experience.
- Background authentication token refresh so long sessions no longer hit expired-token errors.
- Installer pipeline overhauled for both Windows (MSI) and macOS (DMG) distribution, with cleaner upgrades and a new blob-published download flow.
- Version is now shown on the login screen for easier support and troubleshooting.

**Bug Fixes:**

- Fixed startup crash related to embedded browser initialization and user data folder location.
- Fixed race condition where switching workspaces could spawn a ghost tab.
- Fixed workspace switching losing chat state mid-conversation.

### 0.7.1 <small>April 5, 2026</small> { id="0.7.1" }

**Introduction:**

This patch cleans up Tessa's output rendering for more consistent formatting in chat responses.

**Bug Fixes:**

- Fixed assorted output formatting glitches in Tessa's responses.

### 0.7.0 <small>April 3, 2026</small> { id="0.7.0" }

**Introduction:**

This release adds the ability to paste images directly into prompts for visual analysis, along with the Skills system and memory for richer AI interactions.

**New Features:**

- **Multimodal Vision**: Paste images into prompts for Tessa to analyze alongside your telemetry data.
- **Skills**: Tessa can now use modular skills for specialized tasks.
- **Memory and Context**: Tessa remembers context across sessions for more coherent conversations.

### 0.5.0 <small>March 27, 2026</small> { id="0.5.0" }

**Introduction:**

This release introduces multi-tab chat with split pane support, so you can run multiple AI conversations side by side. Sessions are saved and restored across restarts.

**New Features:**

- **Multi-Tab Chat**: Run multiple conversations with Tessa simultaneously.
- **Split Pane View**: Drag to split, reorder, and arrange conversation panes.
- **Session Persistence**: Chat history survives application restarts.
- **Workspace Browser**: Browse workspace files and copy paths from the file tree.

**Improvements:**

- Welcome banner and active agent count in the status bar.
- Improved tool result visibility.

**Bug Fixes:**

- Fixed Escape key not canceling active requests.
- Fixed voice stopping behavior.
- Fixed workspace switching issues.

### 0.1.0 <small>March 16, 2026</small> { id="0.1.0" }

**Introduction:**

Initial early access release of IAPM Studio, a cross-platform desktop application for interacting with your telemetry through Tessa.

**New Features:**

- **AI Chat Interface**: Chat with Tessa using natural language to explore your telemetry.
- **Cross-Platform**: Available for Windows, with macOS and Linux support planned.
- **Workspace Management**: Browse and navigate your workspace files.
