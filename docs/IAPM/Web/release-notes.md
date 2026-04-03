# IAPM Web Release Notes

## Version History

### 3.131.0 <small>April 2, 2026</small> { id="3.131.0" }

**Introduction:**

This release gives Tessa smarter diagnostics, redesigns the energy dashboard with per-grid visibility, and adds the ability to send images to Tessa for visual analysis.

**New Features:**

- **Smarter Diagnostics**: Tessa can now fetch correlated performance data and alert summaries in a single query for faster troubleshooting.
- **Energy Dashboard Redesign**: See energy usage per grid, per tenant, and per tier with source labels and breakdown charts.
- **Vision Support**: Send screenshots and images to Tessa for visual analysis alongside your telemetry data.

**Improvements:**

- Updated pricing page to reflect current subscription features.
- Improved trace summaries with stage-level aggregation.

**Bug Fixes:**

- Fixed trace stage display for certain span types.
- Fixed energy calculations on the first of the month.

---

### 3.110.0 <small>March 17, 2026</small> { id="3.110.0" }

**Introduction:**

This release delivers faster trace and log queries through an upgraded storage backend, aligns all terminology with OpenTelemetry standards, and adds a secure gateway for AI assistant communication.

**New Features:**

- **Faster Telemetry Queries**: Upgraded storage backend for significantly faster trace and log searches with improved filtering.
- **Secure AI Gateway**: Dedicated secure channel for AI assistant communication with token-based authentication.

**Improvements:**

- Terminology updated to align with OpenTelemetry standards throughout the application.
- Health check improvements across all services.
- Security hardening for API endpoints.

**Bug Fixes:**

- Fixed occasional phantom spans appearing in trace views.
- Fixed grid template display after storage migration.

---

### 3.90.0 <small>February 25, 2026</small> { id="3.90.0" }

**Introduction:**

This release introduces the AI Assistant with real-time chat, an invitation and permission system for team collaboration, a token and energy system for usage management, and Personal Access Token support.

**New Features:**

- **AI Assistant Chat**: Integrated AI assistant with streaming chat and voice support.
- **Energy System**: Energy bar UI showing AI assistant usage with tier-aware capability levels.
- **Invitation System**: Magic-link invitation flow with role descriptions and a guest role for external collaborators.
- **Permission System**: Role-based permission management with owner authorization guards.
- **Personal Access Tokens**: PAT creation and rotation with scope validation and expiration enforcement.
- **Achievements**: Achievement badges with Coming Soon ribbons and a completed filter.
- **GitHub Login**: GitHub is now available as a login option in the Portal.
- **Welcome Email**: Automated welcome email on first login.
- **Demo Grid Selector**: Quick-access demo grid dropdown.
- **Grid Templates**: Subscription-based AI limits via grid templates.

**Improvements:**

- Guest access on public grids.
- Grid delete now uses deferred cleanup for safer removal.
- Rate limiting for API endpoints.

**Bug Fixes:**

- Fixed default role in invitation creation from "member" to "user".
- Fixed energy fallback on the `/me` endpoint.

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

This release delivers a major dashboard overhaul and significant improvements to trace visualization, with new ways to explore span details and service dependencies.

**New Features:**

- **Span View Tab**: Waterfall timeline visualization for detailed span analysis within traces.
- **Network Graph Tab**: Interactive service dependency visualization for trace analysis.
- **Nested Span Tags**: Collapsible tree view for exploring hierarchical span tag data.

**Improvements:**

- Major dashboard redesign with improved layout and tiles.
- Renamed Immersive APM to **IAPM** throughout the application.
- Enhanced dark/light theme support across all views.
- Improved flame graph sizing and span visibility.

**Bug Fixes:**

- Fixed sidebar styling issues in dark and light themes.
- Fixed notification dropdown layout.

### 3.60.0 <small>May 21, 2025</small> { id="3.60.0" }

**Introduction:**

This release improves the login experience, adds promo code support for billing, and includes performance improvements throughout.

**Improvements:**

- Improved landing page login flow.
- Added promo code and coupon support for billing.
- General performance improvements.

**Bug Fixes:**

- Fixed credit card expiration validation for cards expiring in the current month.

---

### 3.44.0 <small>December 28, 2024</small> { id="3.44.0" }

**Introduction:**

Infrastructure and platform improvements.

**Improvements:**

- Backend platform upgrade for improved performance and compatibility.

---

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

