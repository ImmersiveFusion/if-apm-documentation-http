# IAPM Web Release Notes

## Version History

### 3.90.0 <small>February 25, 2026</small> { id="3.90.0" }

**Introduction:**

This release introduces the AI Assistant with real-time chat, an invitation and permission system for team collaboration, a token and energy system for usage management, and Personal Access Token support.

**New Features:**

- **AI Assistant Chat**: Integrated AI assistant with streaming server-sent events, thinking channels, and client tool calling.
- **Energy System**: Token and energy management with a 3-state model, energy bar UI with game mechanics, and 150K free-tier token limit per 6-hour window. Origin-level users receive unlimited energy.
- **Invitation System**: Magic-link invitation flow with role descriptions and a new guest role for external collaborators.
- **Permission System**: Role-based permission management with owner authorization guards on tenant, subscription, and grid API key actions.
- **Personal Access Tokens**: PAT creation and rotation with scope validation, expiration enforcement, and a 30-day limit for non-Origin users.
- **Achievements**: Achievement badges with Coming Soon ribbons and a completed filter.
- **GitHub Login**: GitHub is now available as a login option in the Portal.
- **Welcome Email**: Automated welcome email on first login with embedded HTML templates.
- **Demo Grid Selector**: Quick-access demo grid dropdown, with internal global grids hidden from the list.
- **Grid Templates**: Subscription-based AI limits via grid templates for tiered usage control.
- **Speech Proxy**: Text-to-speech proxy with WAV output for Unity client compatibility.

**Improvements:**

- **API v2.0**: Default API version is now v2.0; all legacy V1 controllers have been removed.
- **.NET 10 Upgrade**: Backend upgraded from .NET 9 to .NET 10.
- **AI Model Ladder**: Tier-aware model routing with automatic fallback on exhaustion and vision modality support.
- **Response Channels**: Structured assistant output with separate thinking, spoken, and written channels.
- **Public Grid Access**: Guest access on public grids with streamlined authorization.
- **Rate Limiting**: Server-side rate limiting for API endpoints.
- Improved OpenAPI spec with proper nullable `$ref` support.
- Grid delete now uses deferred cleanup for safer removal.
- Simplified AI Model and Speech entity management by removing redundant Name fields.
- Lightweight token introspect endpoint for faster authorization checks.

**Bug Fixes:**

- Fixed default role in invitation creation from "member" to "user".
- Fixed grid-to-free-tier fallback and personal energy on the `/me` endpoint.
- Fixed SPA build errors from enum-to-string migration in assistant status.
- Fixed null handling for invalid or missing API keys.
- Fixed `.gitignore` corruption for the `.angular` directory.

---

### 3.82.0 <small>January 25, 2026</small> { id="3.82.0" }

**Introduction:**

This release introduces new account management features, a usage dashboard, and significant navigation improvements for a more intuitive user experience.

**New Features:**

- **Usage Dashboard**: New dashboard with sparkbox visualizations showing your telemetry usage at a glance.
- **Grid Limits UI**: View your subscription limits with interactive sparkline charts.
- **Account Page**: New dedicated account management page in the Profile section.
- **Welcome Modal**: New onboarding experience for first-time users with guided setup.
- **Portal App**: Standalone portal application with static hosting for improved performance.

**Improvements:**

- **Navigation Redesign**: New three-layout architecture for improved usability and discoverability.
- **Dark Theme Default**: Dark theme is now the default, with improved landing page styling.
- Updated Portal with IAPM branding and refined dark theme styling.
- AI usage limits now displayed based on your subscription tier.
- Improved welcome modal and empty state onboarding UX.
- Disabled buttons are now more visually obvious in dark mode.
- Improved confirmation dialog layout.

**Bug Fixes:**

- Fixed Quick Start wizard stepper checkmarks and Final checks content.
- Fixed dark mode sparkbox styling for usage dashboard.

### 3.71.1 <small>December 9, 2025</small> { id="3.71.1" }

**Introduction:**

This release delivers a major dashboard overhaul, Angular 21 upgrade, and significant improvements to trace visualization capabilities. The UI has been refined with better dark/light theme support and a reorganized SCSS architecture for maintainability.

**New Features:**

- **Span View Tab**: New waterfall timeline visualization for detailed span analysis within traces.
- **Network Graph Tab**: Interactive service dependency visualization for trace analysis.
- **Nested Span Tags**: Collapsible tree view for exploring hierarchical span tag data.
- **Layer Indicator Component**: Reusable partial component for consistent layer visualization.
- **Empty Field Component**: Improved no-data messaging across the application.

**Improvements:**

- Upgraded from **Angular 20 to Angular 21**.
- Major dashboard redesign with improved layout and tile components.
- Reorganized SCSS architecture with centralized dark theme variables.
- Renamed Immersive APM to **IAPM** throughout the application.
- Enhanced dark/light theme support across all components.
- Improved flame graph sizing and span visibility.

**Bug Fixes:**

- Fixed sidebar badge styling and text color.
- Fixed sidebar submenu chevron positioning for dark/light themes.
- Fixed notification dropdown layout and vertical alignment.
- Fixed production build SCSS import paths.

**Known Issues:**

- None identified in this release.

### 3.34.1 <small>September 16, 2024</small> { id="3.34.1" }

- Fixed bug: Fixes to time picker

### 3.34.0 <small>September 15, 2024</small> { id="3.34.0" }

- Re-organized products on embeddable pages.

### 3.33.0 <small>Aug 23, 2024</small> { id="3.33.0" }

- OData endpoint removal

### 3.32.0 <small>Aug 21, 2024</small> { id="3.32.0" }

- Metered billing improvements

### 3.31.0 <small>Aug 9, 2024</small> { id="3.31.0" }

- Affiliate network wire up

### 3.30.0 <small>Aug 6, 2024</small> { id="3.30.0" }

- Angular 18 upgrade

### 3.25.0 <small>July 2, 2024</small> { id="3.25.0" }

- Add the ability to show the demo IAPM grid for all accounts.

