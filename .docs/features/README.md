# Documentation Site Features

This folder contains update plans and feature tracking for the documentation site itself, not product feature documentation.

## Purpose

The features folder is used to:
- **Plan Documentation Updates** - Track planned improvements to the docs site
- **Document Site Features** - Plan new documentation site capabilities
- **Track Initiatives** - Organize documentation improvement initiatives
- **Coordinate Changes** - Plan and coordinate documentation restructuring

## What Goes Here

### Documentation Site Improvements
- Navigation restructuring plans
- New documentation sections or pages
- Documentation site feature additions (search, filters, etc.)
- Content organization improvements
- Template or theme updates

### NOT Product Features
This folder does NOT contain documentation about Immersive APM product features. Product feature documentation goes directly in the `docs/` folder following the standard content structure.

## Structure

Organize feature plans in individual files or folders:
```
.docs/features/
├── navigation-restructure.md
├── search-improvements.md
├── new-section-plan/
│   ├── outline.md
│   ├── content-checklist.md
│   └── migration-plan.md
└── theme-updates.md
```

## Planning Format

Each feature plan should include:
- **Objective** - What are we trying to achieve?
- **Current State** - What exists now?
- **Proposed Changes** - What will change?
- **Implementation Steps** - How will we do it?
- **Impact** - What pages/sections are affected?
- **Timeline** - When will this happen? (optional)

Use the [TEMPLATE.md](TEMPLATE.md) file as a starting point for new feature plans. Copy it and fill in the relevant sections.

## Active Plans

### [Documentation Restructure: IAPM vs. IAPM Portal](restructure-portal-vs-immersive.md)
**Status:** Planning
**Created:** 2024-12-03
**Priority:** HIGH (Foundation for AI Copilot alignment)

Major restructure to clarify the distinction between IAPM Portal (conventional APM + management) and IAPM (immersive 3D/VR client + AI Copilot). Uses proper product branding and positions IAPM as the primary differentiator.

**Key Changes:**
- Rename "Analysis and Visualization" → Split into "IAPM" + "IAPM Portal"
- Rename "Setup" → "Configuration & Management"
- Elevate IAPM as primary section
- Document IAPM Portal's conventional APM capabilities
- AI Copilot as first feature under IAPM
- Complete URL redirect strategy with /iapm/ and /portal/ aliases

**Folders:**
- `docs/IAPM/` - Immersive client
- `docs/IAPM-Portal/` - Conventional APM + management
- `docs/Configuration-and-Management/` - Backend setup

### [AI Copilot Documentation Alignment](ai-copilot-alignment.md)
**Status:** Planning
**Created:** 2024-12-03
**Priority:** HIGH (Depends on restructure)

Strategic documentation update to align with company direction around AI Copilot as a core product differentiator. Creates comprehensive AI Copilot documentation section positioned under The Immersive Experience.

**Key Deliverables:**
- 6 new AI Copilot documentation pages
- 6-8 updated existing pages
- Short URL aliases for marketing
- Screenshots, videos, and examples

**Note:** This plan should be implemented AFTER the restructure is complete.

---

**Maintained By:** Immersive Fusion documentation team
**Last Updated:** 2025-12-03
