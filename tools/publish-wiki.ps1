# publish-wiki.ps1
# Copies wiki-source files into the local wiki clone, commits, and pushes.

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path "."
$wikiSource = Join-Path $repoRoot "wiki-source"

# Derive wiki clone path from repo remote URL
$remoteUrl = git remote get-url origin 2>$null
if (-not $remoteUrl) {
  throw "Could not determine remote URL. Make sure you have a git remote named origin."
}

# Convert SSH or HTTPS URL to wiki clone path convention
$wikiClone = $remoteUrl -replace "\.git$", ".wiki.git"
$wikiLocalPath = Join-Path (Split-Path $repoRoot -Parent) "glow-accessibility-champion-lab.wiki"

if (-not (Test-Path $wikiSource)) {
  throw "wiki-source folder not found at $wikiSource"
}

if (-not (Test-Path $wikiLocalPath)) {
  Write-Host "Wiki clone not found at $wikiLocalPath"
  Write-Host "Clone the wiki first with:"
  Write-Host "  git clone $wikiClone `"$wikiLocalPath`""
  Write-Host ""
  Write-Host "If this is a new wiki, create a Home page in the GitHub web interface first."
  exit 1
}

Copy-Item -Path (Join-Path $wikiSource "*.md") -Destination $wikiLocalPath -Force

Push-Location $wikiLocalPath
try {
  git status --short
  git add .
  git commit -m "Update GLOW capstone wiki pages"
  git push
}
finally {
  Pop-Location
}

Write-Host "Wiki updated."
