# new-module-artifact.ps1
# Creates a new artifact file from the module-closeout-template.

param(
  [Parameter(Mandatory=$true)]
  [string]$ModuleFolder,

  [Parameter(Mandatory=$true)]
  [string]$FileName
)

$ErrorActionPreference = "Stop"

$templatePath = "templates\module-closeout-template.md"
$targetPath = Join-Path $ModuleFolder $FileName

if (-not (Test-Path $ModuleFolder)) {
  throw "Module folder not found: $ModuleFolder"
}

if (Test-Path $targetPath) {
  Write-Host "File already exists: $targetPath"
  exit 0
}

if (Test-Path $templatePath) {
  Copy-Item -Path $templatePath -Destination $targetPath
  Write-Host "Created $targetPath from template."
} else {
  New-Item -ItemType File -Path $targetPath -Force | Out-Null
  Write-Host "Created empty file: $targetPath"
}

Write-Host "Open with: code $targetPath"
