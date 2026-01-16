# Documentation Architecture

## Technology Stack

| Component | Technology |
|-----------|------------|
| Generator | MkDocs |
| Theme | Material for MkDocs |
| Python | 3.12+ |
| Hosting | Azure Static Web Apps |

## Repository Structure

```
if-apm-documentation-http/
├── .docs/knowledge/    # This knowledge base
├── docs/               # Source markdown files
│   ├── Getting-Started/
│   ├── Setup/
│   ├── Products/
│   │   ├── IAPM-Desktop/
│   │   └── IAPM-Web/
│   ├── Partner/
│   ├── Resources/
│   └── Contact/
├── overrides/          # Custom templates
├── mkdocs.yml          # MkDocs configuration
└── serve.ps1           # Local dev server
```

## Local Development

```powershell
.\envprep.ps1    # First time setup
.\serve.ps1      # Start local server (localhost:8000)
```

## Deployment

| Property | Value |
|----------|-------|
| Platform | Azure Static Web Apps |
| Build | `mkdocs build` |
| Output | `site/` |
| URL | docs.immersivefusion.com |

## Navigation

- Managed via `mkdocs.yml` and `.pages` files
- Six main sections: Getting Started, Setup, Products, Partner, Resources, Contact

## Theme

| Element | Value |
|---------|-------|
| Colors | Deep purple, black |
| Fonts | Josefin Sans (headers), Roboto (body) |
| Modes | Dark and Light |
