# package-capstone.ps1
# Creates a clean capstone package folder.

$ErrorActionPreference = "Stop"

$packageRoot = "dist/glow-accessibility-champion-lab-capstone"
New-Item -ItemType Directory -Path $packageRoot -Force | Out-Null

$folders = @(
  "00-capstone-overview",
  "01-module-ai-foundations",
  "02-module-generative-ai",
  "03-module-ai-productivity",
  "04-module-critical-thinking",
  "05-module-governance",
  "06-module-campus-champion",
  "templates",
  "ahg-implementation",
  "wiki-source"
)

foreach ($folder in $folders) {
  if (Test-Path $folder) {
    Copy-Item -Path $folder -Destination $packageRoot -Recurse -Force
  }
}

if (Test-Path "README.md") {
  Copy-Item -Path "README.md" -Destination $packageRoot -Force
}

if (Test-Path "SAFETY.md") {
  Copy-Item -Path "SAFETY.md" -Destination $packageRoot -Force
}

Compress-Archive -Path $packageRoot -DestinationPath "dist/glow-accessibility-champion-lab-capstone.zip" -Force

Write-Host "Package created: dist/glow-accessibility-champion-lab-capstone.zip"
Write-Host ""
Write-Host "Before releasing:"
Write-Host "1. Run the public-sharing-sanitization-checklist."
Write-Host "2. Review ahg-implementation/public-sharing-sanitization-checklist.md"
Write-Host "3. Only create a release after sanitization is confirmed."
