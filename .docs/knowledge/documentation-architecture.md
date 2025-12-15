# Documentation Architecture

## Technology Stack

### Core Framework
- **Generator:** MkDocs (Python-based static site generator)
- **Theme:** Material for MkDocs
- **Language:** Markdown with Python Markdown extensions
- **Python Version:** 3.12+ required

### MkDocs Plugins
1. **mkdocs-material** - Material Design theme implementation
2. **mkdocs-awesome-pages-plugin** - Flexible navigation structure
3. **mkdocs-git-revision-date-localized-plugin** - Automatic last-updated dates
4. **mkdocs-minify-plugin** - HTML/CSS/JS minification
5. **mkdocs-redirects** - URL redirect management
6. **markdown_include** - Content reuse and includes

### Markdown Extensions
- Tables, fenced code blocks, footnotes
- Admonitions (callouts/alerts)
- Definition lists
- Attribute lists
- Table of contents
- Emoji support
- Syntax highlighting

## Repository Structure

```
if-apm-documentation-http/
├── .docs/               # Project knowledge (this folder)
│   └── knowledge/       # Documentation about the documentation
├── docs/                # Source markdown files
│   ├── Getting-Started/
│   ├── Setup/
│   ├── Products/
│   │   ├── IAPM-Desktop/
│   │   └── IAPM-Web/
│   ├── Partner/
│   ├── Resources/
│   │   ├── Terms-and-Concepts/
│   │   ├── Legal/
│   │   └── Toolkit/
│   └── Contact/
├── overrides/           # Custom templates and assets
│   ├── home.html        # Custom homepage
│   └── main.html        # Base template
├── mkdocs.yml           # MkDocs configuration
├── requirements.txt     # Python dependencies
├── envprep.ps1         # Environment setup script
└── serve.ps1           # Local development server script
```

## Build & Deployment

### Local Development
1. **Environment Setup:** `.\envprep.ps1` (PowerShell)
   - Creates Python virtual environment
   - Installs dependencies from requirements.txt
2. **Local Server:** `.\serve.ps1`
   - Activates virtual environment
   - Runs `mkdocs serve`
   - Available at http://localhost:8000

### Production Deployment
- **Platform:** Azure Static Web Apps
- **Build Command:** `mkdocs build`
- **Output Directory:** `site/`
- **Published URL:** https://docs.immersivefusion.com

## Site Configuration

### Theme Customization
- **Color Scheme:** Deep purple and black
- **Font Family:**
  - Headers: Josefin Sans
  - Body: Roboto
  - Code: Roboto Mono
- **Dark/Light Mode:** Both supported
- **Logo & Favicon:** Custom branding
- **Custom CSS:** `overrides/extra.css`
- **Custom JS:** `overrides/extra.js`

### Features Enabled
- Navigation tabs
- Navigation sections
- Table of contents integration
- Search functionality
- Git revision dates
- Social media links
- Google Analytics integration

### Navigation Structure
Navigation is managed through:
- `mkdocs.yml` top-level structure
- `.pages` files in directories (awesome-pages-plugin)
- Automatic ordering and discovery

## Content Organization

### Six Main Sections

1. **Getting Started** - Onboarding and authentication
2. **Setup** - Configuration and instrumentation
3. **Products** - IAPM Desktop (3D/VR) and IAPM Web clients
4. **Partner** - Programs and recognition
5. **Resources** - Concepts, legal, tools
6. **Contact** - Community and support

### Content Statistics
- **Total Files:** 53 markdown files
- **Release Notes:** Extensive version history for both clients
- **Code Examples:** Instrumentation samples in multiple languages
- **Media:** Screenshots, videos (YouTube embeds), diagrams

## Special Features

### Redirects
Configured redirects for:
- Legacy URL paths
- Social media shortcuts
- Content reorganization

### Custom Templates
- **home.html:** Landing page with hero section
- **main.html:** Extended base template with custom blocks

### SEO & Analytics
- Google Analytics tracking
- Site description and keywords
- Social media meta tags
- Sitemap generation

## Development Workflow

### Typical Changes
1. Edit markdown files in `docs/`
2. Run `.\serve.ps1` for live preview
3. Commit changes to feature branch
4. Create PR to `main` branch
5. Merge triggers automatic deployment

### Branch Strategy
- **main:** Production branch
- **dk.rn:** Current development branch (example)
- Feature branches for specific updates

### Quality Checks
- No broken links (internal navigation)
- Proper markdown formatting
- Code block syntax highlighting
- Responsive design testing
