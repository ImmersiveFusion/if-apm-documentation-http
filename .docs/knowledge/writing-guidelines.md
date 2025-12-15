# Writing Guidelines

## Tone & Style

| Attribute | Description |
|-----------|-------------|
| Innovative | Revolutionary approach to APM |
| Technical | Precise, developer-friendly |
| Accessible | Complex concepts made understandable |
| Professional | Enterprise-ready, credible |

## Terminology

### Product Names

| Correct | Incorrect |
|---------|-----------|
| Immersive APM | immersive APM, ImmersiveAPM |
| IAPM Desktop | IAPM 3D, Immersive APM Desktop |
| IAPM Web | IAPM Portal, Immersive APM Web |
| OpenTelemetry | Open Telemetry |
| Entra ID | Azure AD |

### Technical Terms

| Term | Usage |
|------|-------|
| telemetry | lowercase |
| API key | not "API Key" or "api key" |
| cloud-native | hyphenated adjective |
| microservices | one word |

### URLs

| Service | URL |
|---------|-----|
| Entra ID Login | azure.iapm.app |
| Local/Social Login | my.iapm.app |
| OTLP Endpoint | otlp.iapm.app |
| Demo Environment | demo.iapm.app |
| Documentation | docs.immersivefusion.com |

## Markdown Conventions

### Headers

- **H1 (#):** Page title (one per page)
- **H2 (##):** Major sections
- **H3 (###):** Subsections
- Avoid H5/H6

### Admonitions

```markdown
!!! note "Title"
    Content here

!!! warning
    Important warning

!!! tip
    Helpful tip
```

Types: note, info, tip, warning, danger, example

### Links

```markdown
[Internal](../other-page.md)
[External](https://example.com){ target="_blank" }
```

### Tables

```markdown
| Column 1 | Column 2 |
|----------|----------|
| Data     | Data     |
```

## Page Structure

1. Title (H1)
2. Brief intro paragraph
3. Main content sections (H2)
4. Next Steps / Related links

## Navigation Paths (IAPM Web UI)

Current navigation structure:

| Section | Items |
|---------|-------|
| **Billing** | Tenants, Billing Profiles, Subscriptions |
| **Applications** | Environments, Grids |

## Quality Checklist

- [ ] Terminology matches standards
- [ ] Links work (no 404s)
- [ ] Code examples tested
- [ ] Screenshots current
- [ ] Mobile-responsive
