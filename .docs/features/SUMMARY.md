# Documentation Restructure - Summary

## What We're Doing

Restructuring the IAPM documentation to:
1. Use proper product branding: **IAPM** vs. **IAPM Portal**
2. Clarify purpose distinction: Immersive investigation vs. Conventional APM
3. Position AI Copilot prominently as a key differentiator
4. Properly document IAPM Portal's conventional APM capabilities

## The Change

### Current Structure ❌
```
├── Setup
├── Analysis and Visualization
│   ├── 3D and VR
│   └── Web and Mobile  ← Equal weight, unclear purpose
```

### New Structure ✅
```
├── Configuration & Management (was "Setup")
├── IAPM          ← PRIMARY (desktop client, the "immersive" experience)
│   ├── AI Copilot            ← FIRST (most innovative)
│   ├── Environment
│   └── Advanced Features
├── IAPM Web                ← Conventional APM + management
│   ├── APM Features          ← NEW: Document full APM capabilities
│   └── Management            ← NEW: Account/subscription UI
```

## Folder Structure

| Old Path | New Path | Purpose |
|----------|----------|---------|
| `docs/Analysis-and-Visualization/3D-and-VR/` | `docs/IAPM/` | Desktop client (the immersive experience + AI) |
| `docs/Analysis-and-Visualization/Web-and-Mobile/` | `docs/IAPM-Web/` | Conventional APM + management |
| `docs/Setup/` | `docs/Configuration-and-Management/` | Backend configuration |

## URL Strategy

### Marketing-Friendly Short URLs (all lowercase)

- `/iapm/` or `/iapm/` → IAPM
- `/ai/` or `/copilot/` → AI Copilot documentation
- `/iapm-web/` or `/iapm-web/` → IAPM Web
- `/config/` → Configuration & Management

### Redirects
All old URLs redirect automatically - **no broken links**
Note: All URLs are lowercase for web standards compliance

## Key Messaging

### IAPM

**"Enter the World of Your Application"**

- Deep troubleshooting with AI assistance
- Immersive visualization
- Desktop client (Windows/Mac/Linux)
- Revolutionary approach to APM

### IAPM Web

**"Full-featured APM in your browser"**

- Conventional APM (dashboards, traces, logs, alerts)
- Account and subscription management
- No installation required
- azure.iapm.app and my.iapm.app

## What Gets Documented

### New Content Needed

**1. IAPM Web APM Features** (currently undocumented):

- Dashboards and Metrics
- Distributed Tracing
- Log Aggregation and Analysis
- Monitoring and Alerts
- Analysis Tools

**2. IAPM Web Management** (currently scattered):

- Account Configuration
- Subscription Management
- User Administration

**3. AI Copilot** (currently only in release notes):

- Complete dedicated section under IAPM
- What is AI Copilot?
- Getting Started
- Chat vs. Voice
- Use Cases and Examples
- Best Practices
- FAQ

## Implementation Approach

**Phase 1: Structure** (Week 1-2)
- Create new folder structure
- Update navigation files
- Set up URL redirects

**Phase 2: Migration** (Week 2-3)
- Move existing content to new locations
- Update cross-references
- Test all links

**Phase 3: New Content** (Week 3-4)
- Write AI Copilot documentation
- Document IAPM Web APM features
- Create "Choose Your Path" guidance

**Phase 4: Polish** (Week 4)
- Review and QA
- Deploy
- Announce

## Success Metrics

Users should be able to:

1. ✅ Understand when to use IAPM vs. IAPM Web
2. ✅ Find AI Copilot documentation easily
3. ✅ Learn about IAPM Web's APM capabilities
4. ✅ Navigate to the right product for their needs

## Planning Documents

1. **[Detailed Restructure Plan](restructure-portal-vs-immersive.md)** - Complete implementation details
2. **[Visual Comparison](restructure-visual-comparison.md)** - Side-by-side comparison
3. **[AI Copilot Alignment](ai-copilot-alignment.md)** - AI Copilot content plan

---

**Status:** Planning (ready for stakeholder review)
**Next Steps:** Review and approval, then begin implementation
