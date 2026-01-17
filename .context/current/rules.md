# Documentation Project Rules

## Link Validation

When checking for broken links in the documentation site:

1. **Tool**: Use `npx linkinator` for comprehensive link checking
2. **Command**:
   ```bash
   npx linkinator http://127.0.0.1:8000/ --recurse --timeout 15000 2>&1 | grep -E "^\[(4|5)[0-9][0-9]\]"
   ```
3. **Ignore 429 errors**: These are GitHub rate limits on edit links, not real broken links
4. **Focus on 404 errors**: These are actual broken links that need fixing

## Link Syntax in MkDocs

- Use trailing slash for directories: `[Link](../path/to/page/)` not `[Link](../path/to/page/index.md)`
- Relative paths are preferred over absolute URLs for internal links
- External links should use full URLs with `{ target="_blank" }` attribute

## Content Rules

- **Do not fabricate content**: Only create documentation from verified sources
- **Check IF.Knowledge** for accurate pricing, plans, and business information
- **Check source repos** (IF.APM.App.Unity.HDRP, IF.APM.App.Http) for release notes

## Commit Guidelines

- Do not commit automatically unless explicitly requested
- Include `Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>` in commits
- Follow existing commit message style (short, descriptive)
