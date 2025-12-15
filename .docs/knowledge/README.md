# Documentation Knowledge Base

This folder contains comprehensive documentation about the Immersive APM documentation project itself. It serves as a knowledge base for understanding the project structure, content, and guidelines.

## Purpose

This knowledge base helps:
- **New Contributors:** Understand the project quickly
- **Content Writers:** Follow consistent guidelines and patterns
- **Developers:** Navigate the documentation architecture
- **Maintainers:** Reference technical details and decisions

## Contents

### [project-overview.md](project-overview.md)
Comprehensive overview of what Immersive APM is, its purpose, target audience, and value proposition.

**Topics covered:**
- Project identity and purpose
- What is Immersive APM?
- Target audience and users
- Products and services
- Development status
- Community and support

### [documentation-architecture.md](documentation-architecture.md)
Technical details about how the documentation site is built and structured.

**Topics covered:**
- Technology stack (MkDocs, Material theme, plugins)
- Repository structure and organization
- Build and deployment processes
- Site configuration and customization
- Navigation and content organization
- Development workflow

### [content-structure.md](content-structure.md)
Complete map of all documentation content and topics covered.

**Topics covered:**
- Six main documentation sections
- Detailed topic breakdowns
- Content themes and approaches
- Target audience for each section
- Content maintenance practices

### [technical-details.md](technical-details.md)
Deep technical information about the Immersive APM platform and supporting technologies.

**Topics covered:**
- Application technology stack (3D/VR client, Web/Mobile client)
- OpenTelemetry integration
- Version history highlights
- System requirements
- Authentication and security
- Multi-tenancy architecture
- Visualization features
- Performance characteristics

### [writing-guidelines.md](writing-guidelines.md)
Standards and best practices for writing and maintaining documentation.

**Topics covered:**
- Tone and style guidelines
- Content patterns and templates
- Markdown conventions
- Terminology standards
- URL and versioning conventions
- SEO and accessibility
- Media guidelines
- Quality checklist

## Quick Reference

### Key URLs
- **Documentation Site:** https://docs.immersivefusion.com
- **GitHub Repository:** https://github.com/ImmersiveFusion/if-apm-documentation-http
- **Entra ID Login:** azure.iapm.app
- **Local/Social Login:** my.iapm.app
- **Chaos Simulator:** demo.iapm.app
- **OTLP Endpoint:** otlp.iapm.app

### Product Names
- **Immersive APM** - The main product
- **IAPM Web** - Browser-based client (formerly "Immersive APM Web & Mobile")
- **IAPM Desktop** - Desktop VR client (formerly "Immersive APM 3D & VR")
- **Immersive Fusion LLC** - The company

### Technology Stack Summary
- **Documentation:** MkDocs + Material theme
- **3D/VR Client:** Unity 6 + .NET 9.0
- **Web Client:** Angular (inferred) + ASP.NET Core
- **Infrastructure:** Microsoft Azure
- **Standard:** OpenTelemetry

### Current Versions
- **3D/VR Client:** v1.10.0 (latest documented)
- **Web/Mobile Client:** v3.34.1 (latest documented)

### Documentation Sections
1. Getting Started
2. Setup
3. Analysis and Visualization
4. Partner
5. Resources
6. Contact

## Development Commands

### Local Development
```powershell
# Setup environment (first time)
.\envprep.ps1

# Start local server
.\serve.ps1
```

### Building Documentation
```bash
# Build static site
mkdocs build

# Output directory
site/
```

## Contributing

When adding or updating documentation:

1. **Follow Guidelines:** Review [writing-guidelines.md](writing-guidelines.md)
2. **Check Structure:** Ensure content fits in [content-structure.md](content-structure.md)
3. **Update Knowledge Base:** If you add new patterns or conventions, document them here
4. **Test Locally:** Always preview with `.\serve.ps1` before committing
5. **Create PR:** Submit changes to `main` branch

## Maintenance

This knowledge base should be updated when:
- New documentation sections are added
- Writing patterns or guidelines change
- Technology stack is updated
- Product names or URLs change
- Major architectural decisions are made

## Contact & Support

- **Discord Community:** See Contact section in main docs
- **GitHub Issues:** Report documentation issues on repository
- **Social Media:** X (Twitter), LinkedIn, YouTube

---

**Last Updated:** 2025-12-03
**Maintained By:** Immersive Fusion documentation team
**Version:** 1.0
