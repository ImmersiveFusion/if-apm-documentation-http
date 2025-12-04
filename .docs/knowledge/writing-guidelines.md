# Documentation Writing Guidelines

## Tone & Style

### Voice Characteristics
- **Innovative & Confident:** Emphasizes revolutionary approach to APM
- **Technical yet Accessible:** Balances depth with clarity
- **Community-Oriented:** Friendly, supportive, collaborative
- **Professional:** Enterprise-ready, credible

### Example Phrases
- "Enter the World of Your Application" (tagline)
- "Immersive" (key brand term)
- "Cloud-native" (technical positioning)
- References to VR/3D as "next generation" APM

### Writing Principles
1. **Clarity First:** Technical accuracy without unnecessary jargon
2. **Action-Oriented:** Focus on what users can do
3. **Progressive Disclosure:** Basic → advanced information flow
4. **Visual Support:** Screenshots, diagrams, videos where helpful

## Content Patterns

### Documentation Structure
Most documentation pages follow this pattern:
1. **Overview/Introduction:** What is this about?
2. **Prerequisites:** What's needed before starting?
3. **Step-by-Step Instructions:** Numbered procedures
4. **Configuration Details:** Settings and options
5. **Troubleshooting:** Common issues and solutions
6. **Next Steps:** Where to go from here

### Installation Guides
```markdown
# [Platform] Installation

## Overview
Brief description of what will be installed

## System Requirements
- Operating System
- Required Software
- Hardware Specifications
- Storage Space

## Installation Steps
1. Download installer from [link]
2. Run installer...
3. Configure settings...

## Verification
How to confirm successful installation

## Next Steps
- [Link to getting started]
- [Link to configuration]
```

### Release Notes Format
```markdown
# Release Notes - Version X.Y.Z

## New Features
- Feature description with benefits

## Improvements
- Enhancement details

## Bug Fixes
- Issue resolutions

## Known Issues
- Current limitations

## Upgrade Notes
- Migration considerations
```

### Instrumentation Guides
```markdown
# [Language] Instrumentation

## Prerequisites
- SDK version
- Framework requirements

## Installation
Package installation commands

## Basic Configuration
```language
// Minimal working example
```

## Advanced Configuration
```language
// Extended example with options
```

## Verification
How to confirm telemetry is working

## Examples
- Common scenarios
- Best practices
```

## Markdown Conventions

### Headers
- **H1 (#):** Page title (one per page)
- **H2 (##):** Major sections
- **H3 (###):** Subsections
- **H4 (####):** Minor divisions
- Avoid H5/H6 (restructure if needed)

### Links
- **Internal:** Relative paths `[link text](../other-page.md)`
- **External:** Full URLs `[link text](https://example.com)`
- **Anchors:** `[section](#anchor-text)`

### Code Blocks
```markdown
```language
code here
```
```

Supported languages: csharp, java, python, go, javascript, yaml, json, bash, powershell

### Admonitions (Callouts)
```markdown
!!! note "Title"
    Content here

!!! warning
    Important warning

!!! tip
    Helpful tip
```

Types: note, abstract, info, tip, success, question, warning, failure, danger, bug, example, quote

### Lists
- **Unordered:** Use `-` for consistency
- **Ordered:** Use `1.` (auto-numbered)
- **Nested:** Indent with 4 spaces

### Images
```markdown
![Alt text](path/to/image.png)
![Alt text](path/to/image.png "Caption")
```

### Tables
```markdown
| Column 1 | Column 2 |
|----------|----------|
| Data     | Data     |
```

## Terminology Standards

### Product Names
- **Immersive APM** (not "immersive APM" or "Immersive Apm")
- **Immersive APM Web & Mobile** (official client name)
- **Immersive APM 3D & VR** (official client name)
- **Immersive Fusion** (company name)
- **OpenTelemetry** (not "Open Telemetry")
- **Entra ID** (not "Azure AD" - Microsoft rebranded)

### Technical Terms
- **telemetry** (lowercase) - observability data
- **OTLP** - OpenTelemetry Protocol
- **API key** (not "API Key" or "api key")
- **3D** and **VR** (uppercase abbreviations)
- **microservices** (one word)
- **cloud-native** (hyphenated adjective)

### Consistent Acronyms
- **APM** - Application Performance Management
- **IAPM** - Immersive APM (used occasionally)
- **SLA** - Service Level Agreement
- **SSO** - Single Sign-On
- **CNCF** - Cloud Native Computing Foundation

## URL Conventions

### Documentation URLs
- Lowercase with hyphens: `/setup/api-key-management/`
- Match folder structure in `docs/`
- Avoid special characters

### Application URLs
- **demo.iapm.app** - Chaos Simulator
- **otlp.iapm.app** - OTLP endpoint
- **azure.iapm.app** - Entra ID auth
- **my.iapm.app** - Local/Social auth
- **docs.immersivefusion.com** - Documentation

## Version References

### Semantic Versioning
- Format: **MAJOR.MINOR.PATCH** (e.g., v1.10.0)
- Always include "v" prefix in documentation
- Link to specific version release notes

### Version Comparison
- "Latest version" vs "current version" - be specific
- Always mention version requirements
- Indicate experimental/beta features

## SEO & Discoverability

### Page Titles
- Clear, descriptive, keyword-rich
- Include product name when relevant
- Match user search intent

### Meta Descriptions
- Defined in page frontmatter when needed
- Concise summary (150-160 characters)

### Keywords
- OpenTelemetry, APM, observability, monitoring
- 3D visualization, VR, Virtual Reality
- Cloud-native, microservices, distributed tracing

## Accessibility

### Image Alt Text
- Descriptive alternative text for all images
- Explain charts, diagrams, screenshots

### Link Text
- Descriptive link text (not "click here")
- Indicate external links when relevant

### Structure
- Logical heading hierarchy
- Semantic HTML in custom templates
- Keyboard navigation support

## Media Guidelines

### Screenshots
- Clear, high-resolution
- Annotated when necessary (arrows, highlights)
- Consistent window/browser chrome
- Updated with UI changes

### Videos
- YouTube embeds for tutorials
- Include text description/summary
- Provide alternative instructions for users who can't watch

### Diagrams
- Architecture diagrams for complex concepts
- Data flow illustrations
- Network topology visualizations

## Maintenance Notes

### Content Freshness
- Update release notes with each version
- Review system requirements regularly
- Verify external links periodically
- Update screenshots when UI changes

### Deprecation Notices
- Clearly mark deprecated features
- Provide migration paths
- Include timeline when known

### Versioning Content
- Maintain docs for supported versions
- Archive old version documentation
- Clear version indicators on pages

## Common Sections

### Prerequisites
Always include when steps require prior setup:
```markdown
## Prerequisites

Before you begin, ensure you have:
- Item 1
- Item 2
- Item 3
```

### System Requirements
For installation guides:
```markdown
## System Requirements

- **Operating System:** Details
- **Required Software:** Versions
- **Hardware:** Specifications
- **Storage:** Space needed
```

### Related Topics
End documentation pages with relevant links:
```markdown
## Related Topics

- [Related Page 1](../link1/)
- [Related Page 2](../link2/)
- [Related Page 3](../link3/)
```

## Special Features

### Include Files
Use markdown_include for reusable content:
```markdown
{!path/to/include.md!}
```

### Redirects
Manage in mkdocs.yml:
```yaml
plugins:
  - redirects:
      redirect_maps:
        'old/path.md': 'new/path.md'
```

### Social Media Embeds
- YouTube videos embedded via iframe
- X (Twitter) links for updates
- LinkedIn company page

## Quality Checklist

Before publishing documentation:
- [ ] Spelling and grammar checked
- [ ] Code examples tested
- [ ] Links verified (no 404s)
- [ ] Images display correctly
- [ ] Consistent terminology
- [ ] Proper heading hierarchy
- [ ] Mobile-responsive layout
- [ ] Search keywords included
- [ ] Version information current
- [ ] Related topics linked
