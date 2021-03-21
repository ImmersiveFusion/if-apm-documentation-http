# This scripts should not be run directly. Use serve.ps1 instead

Write-Host Updating/installing mkdocs
& pip install --upgrade mkdocs

Write-Host Updating/installing mkdocs-material
& pip install --upgrade mkdocs-material

Write-Host Updating/installing plugins
& pip install --upgrade markdown_include
& pip install --upgrade mkdocs-awesome-pages-plugin
& pip install --upgrade mkdocs-git-revision-date-localized-plugin
& pip install --upgrade mkdocs-minify-plugin
& pip install --upgrade mkdocs-redirects