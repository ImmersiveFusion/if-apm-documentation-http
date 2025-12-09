# Documentation Restructure: IAPM vs. IAPM Web

**Status:** Planning
**Created:** 2024-12-03
**Last Updated:** 2024-12-03
**Owner:** Documentation Team
**Related to:** [AI Copilot Documentation Alignment](ai-copilot-alignment.md)

## Objective

Restructure the documentation to better reflect the fundamental distinction between:
1. **IAPM Web** (Web/Mobile) - Management, configuration, and conventional APM functions
2. **IAPM** (3D/VR Client) - Immersive visualization, deep troubleshooting, and AI Copilot interaction

This distinction is critical for users to understand which tool to use for which tasks and positions IAPM (the 3D/VR+AI experience) as the primary value proposition for serious troubleshooting and analysis, while IAPM Web provides conventional APM and management capabilities.

## Current State

### Current Structure
```
Getting Started
Setup (Account, API Keys, Instrumentation, etc.)
Analysis and Visualization
├── 3D and VR
└── Web and Mobile
Partner
Resources
```

### Current Issues
1. **"Analysis and Visualization" is ambiguous** - Doesn't clearly differentiate management vs. deep analysis
2. **Equal weighting** - Portal and Immersive Experience appear equal when they serve different purposes
3. **AI Copilot placement unclear** - Should be strongly associated with Immersive Experience
4. **User confusion** - Not clear when to use Portal vs. Immersive Experience
5. **Value proposition diluted** - The revolutionary 3D/VR+AI experience isn't clearly positioned

### Current Mental Model
Users currently see:
- "Two ways to view my data" (Web vs. 3D/VR)
- Equal choices without clear guidance

### Desired Mental Model
Users should understand:
- **IAPM Web** = Conventional APM, configuration, management, quick monitoring
- **IAPM** = Immersive investigation, deep troubleshooting, AI-assisted analysis, the revolutionary experience

## Proposed Changes

### New Information Architecture

```
Getting Started
├── Overview
├── Choose Your Path
│   ├── IAPM Web (Conventional APM)
│   └── IAPM Client (Immersive Experience)
└── Authentication

Configuration & Management
├── Overview (formerly "Setup")
├── Sandbox
├── Offers & Discounts
├── Account Setup
├── API Key Management
└── Instrumentation

IAPM           ← NEW: Primary focus, folder name: "IAPM"
├── Overview
├── AI Copilot                    ← Prominent placement
│   ├── What is AI Copilot?
│   ├── Getting Started
│   ├── Chat Interface
│   ├── Voice Interaction
│   ├── Use Cases
│   ├── Best Practices
│   └── FAQ
├── 3D/VR Environment
│   ├── Installation
│   ├── Navigation & Controls
│   ├── Visualization Features
│   ├── VR Headset Integration
│   ├── Preferences
│   └── Troubleshooting
└── Advanced Features
    ├── Hall of Supporters
    └── Release Notes

IAPM Web                       ← NEW: Clear positioning, folder name: "IAPM-Web"
├── Overview
├── Getting Started
├── APM Features                  ← Conventional APM capabilities
│   ├── Dashboard & Metrics
│   ├── Traces & Logs
│   ├── Monitoring & Alerts
│   └── Analysis Tools
├── Management
│   ├── Account Configuration
│   ├── Subscription Management
│   └── User Administration
├── Supported Browsers
└── Release Notes

Partner
Resources
```

### Key Structural Changes

1. **Rename "Analysis and Visualization" → Split into two clear sections:**
   - **"IAPM"** (3D/VR Client + AI Copilot) - The immersive experience
   - **"IAPM Web"** (Web/Mobile) - Conventional APM + Management

2. **Elevate "IAPM" as primary section**
   - Appears before IAPM Web in navigation
   - AI Copilot is first subsection (most innovative feature)
   - Emphasizes this is the revolutionary IAPM experience

3. **Rename "Setup" → "Configuration & Management"**
   - Clearer purpose
   - Backend configuration (API keys, instrumentation)
   - UI-based management lives in IAPM Web

4. **Create "Choose Your Path" in Getting Started**
   - IAPM Web path → Conventional APM, quick monitoring, management
   - IAPM Client path → Install 3D/VR client for immersive analysis

5. **Document IAPM Web APM features properly**
   - Not just "light" APM - conventional APM capabilities
   - Dashboard, metrics, traces, logs
   - Monitoring and alerts
   - Analysis tools

### Navigation Order (Priority)

```
docs/.pages:
arrange:
    - index.md
    - Getting-Started
    - IAPM                        ← NEW (highest priority) - Immersive client
    - IAPM-Web                 ← NEW - Conventional APM + management
    - Configuration-and-Management ← RENAMED from Setup
    - Partner
    - Resources
```

### Folder Names

- `docs/IAPM/` - IAPM client (3D/VR + AI Copilot)
- `docs/IAPM-Web/` - IAPM Web (Web/Mobile, conventional APM)
- `docs/Configuration-and-Management/` - Backend setup (renamed from Setup)

### Content Positioning

#### IAPM
**Folder:** `docs/IAPM/`

**Messaging:**
- "Enter the World of Your Application" (tagline)
- "Revolutionary approach to APM with 3D/VR and AI"
- "Immersive visualization and AI-powered insights"
- **Use when:** Deep troubleshooting, complex system investigation, pattern recognition, AI-assisted analysis

**Key Features:**
- AI Copilot (chat & voice interaction)
- 3D topology visualization
- VR immersion and spatial understanding
- Advanced troubleshooting capabilities
- Unity 6 engine, .NET 9.0
- Desktop client (Windows, Mac experimental, Linux)

**Navigation Display:** "IAPM" or "IAPM Client" or "Immersive Client"

#### IAPM Web
**Folder:** `docs/IAPM-Web/`

**Messaging:**
- "Conventional APM from anywhere"
- "Full-featured APM in your browser"
- "Manage, monitor, and analyze without installation"
- **Use when:** Conventional APM needs, quick access, mobile monitoring, account management

**Key Features:**
- **APM Capabilities:**
  - Dashboards and metrics
  - Distributed tracing
  - Log aggregation
  - Monitoring and alerts
  - Analysis and investigation tools
- **Management:**
  - Account and subscription management
  - User administration
  - Configuration
- **Accessibility:**
  - Browser-based (no installation)
  - Cross-platform (desktop, mobile)
  - Available at azure.iapm.app and my.iapm.app

**Navigation Display:** "IAPM Web" or "Portal"

## Implementation Steps

### Phase 1: Planning & Validation (Week 1)
- [ ] Review proposed structure with stakeholders
- [ ] Validate messaging and positioning
- [ ] Confirm technical accuracy of Portal vs. Immersive capabilities
- [ ] Get approval on new section names
- [ ] Document which features belong in which section

### Phase 2: Content Audit & Mapping (Week 1-2)
- [ ] Audit all existing content
- [ ] Map current pages to new structure
- [ ] Identify gaps (new content needed)
- [ ] Identify redundancies (content to merge/remove)
- [ ] Create detailed file migration plan

### Phase 3: Create New Structure (Week 2)
- [ ] Create new folder structure
- [ ] Create "The-Immersive-Experience" folder
- [ ] Create "Portal" folder
- [ ] Rename "Setup" → "Configuration-and-Management"
- [ ] Create AI Copilot subfolder under Immersive Experience
- [ ] Update all `.pages` files with new navigation

### Phase 4: Content Migration (Week 2-3)
- [ ] Move 3D/VR content to "The-Immersive-Experience"
- [ ] Move Web/Mobile content to "Portal"
- [ ] Create AI Copilot content (see ai-copilot-alignment.md)
- [ ] Create new overview pages for each section
- [ ] Update "Choose Your Path" in Getting Started
- [ ] Update cross-references throughout docs

### Phase 5: Redirects & Aliases (Week 3)
- [ ] Create redirects for all moved content in mkdocs.yml
- [ ] Add short URL aliases (/iapm/, /portal/, /ai/, /copilot/)
- [ ] Test all redirects
- [ ] Verify no broken links

### Phase 6: Review & QA (Week 3-4)
- [ ] Technical review
- [ ] Editorial review
- [ ] Navigation testing
- [ ] User flow testing
- [ ] Mobile/responsive testing
- [ ] Search functionality testing

### Phase 7: Deployment (Week 4)
- [ ] Create feature branch
- [ ] Commit all changes
- [ ] Final review
- [ ] Merge to main
- [ ] Monitor deployment
- [ ] Verify production site
- [ ] Announce changes

## Detailed File Migrations

### From "Analysis-and-Visualization/3D-and-VR" to "IAPM"

**Current Path** → **New Path**

`docs/Analysis-and-Visualization/3D-and-VR/` → `docs/IAPM/`
- `index.md` → `index.md` (rewrite for IAPM positioning)
- `Guides/Installation/` → `Installation/`
- `Guides/Navigation/` → `Navigation-and-Controls/`
- `Guides/Preferences/` → `Preferences/`
- `Guides/Uninstallation/` → (move to Installation as subsection)
- `Integrations/` → `VR-Headset-Integration/`
- `Supported-Configurations/` → `System-Requirements/`
- `release-notes.md` → `Release-Notes/index.md`

**New Content in "IAPM":**
- `index.md` - IAPM overview ("Enter the World of Your Application")
- `AI-Copilot/` - Complete AI Copilot documentation (see ai-copilot-alignment.md)
- `3D-VR-Environment/` - Subfolder for 3D/VR specific content (optional organization)
- `Advanced-Features/` - Hall of Supporters, etc.

### From "Analysis-and-Visualization/Web-and-Mobile" to "IAPM-Web"

**Current Path** → **New Path**

`docs/Analysis-and-Visualization/Web-and-Mobile/` → `docs/IAPM-Web/`
- `index.md` → `index.md` (expand to include APM features + management)
- `Guides/` → `Getting-Started/`
- `Supported-Configurations/` → `Supported-Browsers/`
- `release-notes.md` → `Release-Notes/index.md`

**New Content in "IAPM-Web":**
- `index.md` - Portal overview emphasizing conventional APM + management
- `APM-Features/` - NEW: Document conventional APM capabilities
  - `Dashboards-and-Metrics/`
  - `Traces-and-Logs/`
  - `Monitoring-and-Alerts/`
  - `Analysis-Tools/`
- `Management/` - NEW: Account and subscription management
  - `Account-Configuration/`
  - `Subscription-Management/`
  - `User-Administration/`

### "Setup" → "Configuration-and-Management"

**Current Path** → **New Path**

`docs/Setup/` → `docs/Configuration-and-Management/`
- All files stay in same relative structure
- Update overview content to clarify this is backend configuration (API keys, instrumentation)
- Distinguish from UI-based management in IAPM Web
- Link to IAPM Web for account/subscription UI management

## URL Redirects Required (mkdocs.yml)

```yaml
# Restructure redirects - Main sections
'analysis-and-visualization/index.md': 'iapm/index.md'
'analysis-and-visualization/3d-and-vr/index.md': 'iapm/index.md'
'analysis-and-visualization/web-and-mobile/index.md': 'iapm-portal/index.md'
'setup/index.md': 'configuration-and-management/index.md'

# Specific page redirects (3D/VR → IAPM)
'analysis-and-visualization/3d-and-vr/guides/installation/index.md': 'iapm/installation/index.md'
'analysis-and-visualization/3d-and-vr/guides/navigation/index.md': 'iapm/navigation-and-controls/index.md'
'analysis-and-visualization/3d-and-vr/guides/preferences/index.md': 'iapm/preferences/index.md'
'analysis-and-visualization/3d-and-vr/integrations/index.md': 'iapm/vr-headset-integration/index.md'
'analysis-and-visualization/3d-and-vr/supported-configurations/index.md': 'iapm/system-requirements/index.md'
'analysis-and-visualization/3d-and-vr/release-notes.md': 'iapm/release-notes/index.md'

# Specific page redirects (Web-and-Mobile → IAPM-Web)
'analysis-and-visualization/web-and-mobile/guides/index.md': 'iapm-portal/getting-started/index.md'
'analysis-and-visualization/web-and-mobile/supported-configurations/index.md': 'iapm-portal/supported-browsers/index.md'
'analysis-and-visualization/web-and-mobile/release-notes.md': 'iapm-portal/release-notes/index.md'

# Short marketing-friendly aliases
'iapm/index.md': 'iapm/index.md'
'portal/index.md': 'iapm-portal/index.md'
'ai/index.md': 'iapm/ai-copilot/index.md'
'copilot/index.md': 'iapm/ai-copilot/index.md'
'immersive/index.md': 'iapm/index.md'
'3d/index.md': 'iapm/index.md'
'vr/index.md': 'iapm/index.md'
'web/index.md': 'iapm-portal/index.md'
'config/index.md': 'configuration-and-management/index.md'

# AI Copilot sub-pages (for ai-copilot-alignment.md)
'ai/getting-started/index.md': 'iapm/ai-copilot/getting-started.md'
'ai/features/index.md': 'iapm/ai-copilot/features.md'
'ai/use-cases/index.md': 'iapm/ai-copilot/use-cases.md'
'ai/best-practices/index.md': 'iapm/ai-copilot/best-practices.md'
'ai/faq/index.md': 'iapm/ai-copilot/faq.md'
'copilot/getting-started/index.md': 'iapm/ai-copilot/getting-started.md'
```

## Impact Analysis

### Pages Affected
- **All pages under Analysis-and-Visualization/** (~20+ pages)
- **All pages under Setup/** (~10+ pages)
- **Getting Started** pages (update guidance)
- **All cross-references** throughout documentation

### Navigation Impact
- Top-level navigation changes (major UX change)
- Users must learn new mental model
- Existing bookmarks break (but redirects preserve access)

### SEO Impact
- URLs change (redirects maintain SEO value)
- Need to update external links where possible
- Opportunity to improve keywords ("immersive", "portal", "AI copilot")

### User Impact
**Positive:**
- Clearer guidance on which tool to use
- Better discovery of AI Copilot
- Reduced confusion
- Stronger value proposition for Immersive Experience

**Potential Concerns:**
- Existing users need to adjust
- Training materials may need updates
- External links may point to old structure

## Success Metrics

### Quantitative
- Time to find "how to use AI Copilot" (should decrease)
- Navigation paths to Immersive Experience (should increase)
- Portal vs. Immersive page view ratio (expect shift)
- Search queries clarity (fewer "where is X" questions)

### Qualitative
- User feedback on new structure
- Sales/marketing team feedback
- Support ticket analysis (fewer "which should I use" questions)
- User onboarding clarity

## Questions for Discussion

1. **Naming:**
   - Is "The Immersive Experience" the right name, or too wordy?
   - Alternative: "IAPM Experience", "3D/VR Experience", "Immersive Client"?
   - Is "Portal" clear enough, or should it be "IAPM Web", "Management Portal"?

2. **AI Copilot Placement:**
   - Should AI Copilot be FIRST under Immersive Experience (most innovative)?
   - Or should 3D/VR basics come first (installation, then features)?

3. **Portal Capabilities:**
   - What exactly can users do in the Portal today?
   - Is "light analysis" accurate, or is it purely management?
   - Should Portal have its own analytics features documented?

4. **Migration Strategy:**
   - Big bang (all at once) or phased migration?
   - Communication plan for existing users?

5. **Configuration Section:**
   - Should "Configuration & Management" stay separate, or merge into Portal section?
   - Is instrumentation/API keys more "developer setup" than "management"?

## Alternative Structures Considered

### Alternative 1: Client-Centric
```
For Users
├── Immersive Client (3D/VR)
└── Web/Mobile Client

For Administrators
├── Configuration
└── Instrumentation
```
**Rejected:** Doesn't emphasize experience distinction enough

### Alternative 2: Task-Centric
```
Monitor (Portal)
Investigate (Immersive + AI)
Configure (Setup)
```
**Rejected:** Too abstract, doesn't map to product names

### Alternative 3: Capability-Centric (PROPOSED)
```
The Immersive Experience (visualization + AI)
Portal (management + monitoring)
Configuration (setup)
```
**Selected:** Clear purpose distinction, emphasizes innovation

## Timeline

**Target: 4-6 weeks**

- **Week 1:** Planning, stakeholder alignment, decisions
- **Week 2:** Content audit, structure creation, begin AI Copilot content
- **Week 3:** Content migration, redirects, cross-reference updates
- **Week 4:** Review, QA, testing
- **Week 5-6:** Buffer for iterations, final deployment

## Dependencies

- **AI Copilot content** must be ready (see ai-copilot-alignment.md)
- **Stakeholder approval** on new structure and naming
- **Product team input** on Portal vs. Immersive capabilities
- **Marketing alignment** on messaging and positioning

## Notes & Considerations

### Messaging Alignment
All content should reinforce:
- **Immersive Experience** = The revolutionary, AI-powered way to understand your application
- **Portal** = Convenient management and quick checks
- Both are valuable, but for different purposes

### Progressive Disclosure
- Getting Started should guide users to appropriate starting point
- Don't overwhelm with choices
- Make it clear Immersive Experience is the "full" experience

### Future Considerations
- May need separate "Immersive Clouds" section in future (commented in .pages)
- Additional client types possible (mobile app, AR, etc.)
- AI features may expand beyond Copilot

## Related Documentation

- [AI Copilot Documentation Alignment](ai-copilot-alignment.md) - Detailed AI content plan
- [Writing Guidelines](.docs/knowledge/writing-guidelines.md) - Style and terminology
- Current navigation: `docs/.pages`, `docs/Analysis-and-Visualization/.pages`

## Changelog

**2024-12-03**
- Initial restructure plan created
- Proposed three-tier structure: Immersive / Portal / Configuration
- Defined migration paths and redirect strategy
