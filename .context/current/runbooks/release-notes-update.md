# Runbook: Updating Release Notes

How to update IAPM release notes from source repository commits.

## Overview

Release notes in this documentation repo are manually curated from commits in the source repositories. This runbook documents the process for keeping them in sync.

## Source Repositories

| Product | Repository | Release Notes File |
|---------|------------|-------------------|
| IAPM Desktop | `IF.APM.App.Unity.HDRP` | `docs/Products/IAPM-Desktop/release-notes.md` |
| IAPM Web | `IF.APM.App.Http` | `docs/Products/IAPM-Web/release-notes.md` |

## Process

### 1. Identify the Last Documented Version

Check the release notes file for the most recent version entry:

```bash
# Desktop
head -20 docs/Products/IAPM-Desktop/release-notes.md

# Web
head -20 docs/Products/IAPM-Web/release-notes.md
```

### 2. Get Commits Since Last Release

```bash
# Desktop - get recent tags
cd {repo}\IF.APM.App.Unity.HDRP
git tag --sort=-creatordate | head -5

# Get commits since last documented version
git log <last-tag>..HEAD --oneline

# Or by date range
git log --oneline --since="2024-11-01"
```

```bash
# Web - get recent tags
cd {repo}\IF.APM.App.Http
git tag --sort=-creatordate | head -5

# Get commits since last documented version
git log <last-tag>..HEAD --oneline
```

### 3. Filter for User-Facing Changes

Look for commits that affect users:

**Include:**
- New features (UI, functionality)
- User-visible improvements
- Bug fixes users would notice
- Performance improvements
- New integrations

**Exclude:**
- Internal refactoring
- Test changes
- Documentation updates
- Build/CI changes
- Code cleanup

### 4. Categorize Changes

Organize into standard sections:

```markdown
### X.X.X <small>Month DD, YYYY</small> { id="X.X.X" }

**Introduction:**
Brief summary of what's notable in this release.

**New Features:**
- Feature name and description

**Improvements:**
- Improvement description

**Bug Fixes:**
- Fix description

**Known Issues:**
- Issue description
```

### 5. Confidentiality Check

**Do NOT document:**
- Features not yet announced (e.g., Immersive Cubes until ready)
- Internal tooling
- Security-sensitive changes
- Pricing/business strategy details

**When in doubt, ask before documenting.**

### 6. Update What's New Page

If significant features are added, also update:
- `docs/Resources/Whats-New.md`

## Example Workflow

```bash
# 1. Check current state
cd {repo}\if-apm-documentation-http
cat docs/Products/IAPM-Desktop/release-notes.md | head -30

# 2. Get source commits
cd {repo}\IF.APM.App.Unity.HDRP
git log --oneline --since="2025-01-01"

# 3. Review merged PRs for context
git log --oneline --grep="Merged PR"

# 4. Update release notes (back in docs repo)
cd {repo}\if-apm-documentation-http
# Edit docs/Products/IAPM-Desktop/release-notes.md

# 5. Preview locally
# Run mkdocs serve and verify formatting
```

## Formatting Guidelines

- Use `<small>` tags for dates: `<small>Month DD, YYYY</small>`
- Add anchor IDs: `{ id="X.X.X" }`
- Use 4-space indentation for nested lists (MkDocs convention)
- Keep descriptions concise - users scan, not read
- Link to relevant documentation where helpful

## Version Numbering

| Product | Format | Example |
|---------|--------|---------|
| Desktop | Major.Minor.Patch | 1.11.0 |
| Web | Major.Minor.Patch | 3.71.1 |

## Questions?

Contact the documentation maintainer or check with product team before documenting uncertain features.
