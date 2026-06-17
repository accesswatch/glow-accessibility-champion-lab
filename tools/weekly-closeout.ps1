# weekly-closeout.ps1
# Screen-reader-friendly weekly repository check.

param(
  [Parameter(Mandatory=$true)]
  [string]$ModuleFolder
)

$ErrorActionPreference = "Stop"

Write-Host "Checking module folder: $ModuleFolder"

if (-not (Test-Path $ModuleFolder)) {
  throw "Module folder not found: $ModuleFolder"
}

Write-Host "Git status:"
git status --short

Write-Host "Searching for placeholders:"
rg "TODO|TBD|VERIFY|\[insert|PRIVATE|CONFIDENTIAL" $ModuleFolder

Write-Host "Searching for human review language:"
rg "human review|verify|privacy|bias|accessibility" $ModuleFolder

Write-Host "Changed files:"
git diff --name-only

Write-Host "Closeout check complete. Review results above before committing."
