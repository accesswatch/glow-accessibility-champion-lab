# sync-wiki-source.ps1
# Creates or refreshes the wiki-source pages in the main repository.

$ErrorActionPreference = "Stop"
New-Item -ItemType Directory -Path "wiki-source" -Force | Out-Null

Write-Host "wiki-source directory ready."
Write-Host "Edit pages in wiki-source/ and then run publish-wiki.ps1 to push to the wiki."
Write-Host "Pages:"
Get-ChildItem -Path "wiki-source" -Filter "*.md" | Select-Object -ExpandProperty Name
