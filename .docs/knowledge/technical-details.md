# Technical Details

## Documentation Technology Stack

### Core Framework

| Component | Technology |
|-----------|------------|
| Generator | MkDocs (Python-based static site generator) |
| Theme | Material for MkDocs |
| Language | Markdown with Python Markdown extensions |
| Python Version | 3.12+ required |

### MkDocs Plugins

| Plugin | Purpose |
|--------|---------|
| mkdocs-material | Material Design theme |
| mkdocs-awesome-pages-plugin | Flexible navigation structure |
| mkdocs-git-revision-date-localized-plugin | Automatic last-updated dates |
| mkdocs-minify-plugin | HTML/CSS/JS minification |
| mkdocs-redirects | URL redirect management |
| markdown_include | Content reuse and includes |

### Markdown Extensions

- Tables, fenced code blocks, footnotes
- Admonitions (callouts/alerts)
- Definition lists
- Attribute lists
- Table of contents
- Emoji support
- Syntax highlighting

## Build & Deployment

### Local Development

```powershell
# Setup environment (first time)
.\envprep.ps1

# Start local server
.\serve.ps1
```

### Production Deployment

| Property | Value |
|----------|-------|
| Platform | Azure Static Web Apps |
| Build Command | `mkdocs build` |
| Output Directory | `site/` |
| Published URL | <https://docs.immersivefusion.com> |

## Site Configuration

### Theme Customization

| Element | Value |
|---------|-------|
| Color Scheme | Deep purple and black |
| Header Font | Josefin Sans |
| Body Font | Roboto |
| Code Font | Roboto Mono |
| Dark/Light Mode | Both supported |

### Features Enabled

- Navigation tabs and sections
- Table of contents integration
- Search functionality
- Git revision dates
- Social media links
- Google Analytics integration

## Development Workflow

1. Edit markdown files in `docs/`
2. Run `.\serve.ps1` for live preview
3. Commit changes to feature branch
4. Create PR to `main` branch
5. Merge triggers automatic deployment

---

*For product technical details (Unity, .NET, Angular), see [IF.Knowledge](../../../IF.Knowledge/.docs/Product/)*
