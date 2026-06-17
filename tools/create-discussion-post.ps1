# create-discussion-post.ps1
# Posts a module discussion if gh discussion is available and permissions allow it.

param(
  [Parameter(Mandatory=$true)]
  [string]$Repo,

  [Parameter(Mandatory=$true)]
  [string]$Category,

  [Parameter(Mandatory=$true)]
  [string]$Title,

  [Parameter(Mandatory=$true)]
  [string]$BodyFile
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $BodyFile)) {
  throw "Body file not found: $BodyFile"
}

Write-Host "Posting discussion: $Title"
Write-Host "Repository: $Repo"
Write-Host "Category: $Category"
Write-Host "Body file: $BodyFile"
Write-Host ""
Write-Host "Preview (first 10 lines):"
Get-Content $BodyFile | Select-Object -First 10
Write-Host ""

$confirm = Read-Host "Type POST to continue or anything else to cancel"
if ($confirm -ne "POST") {
  Write-Host "Canceled."
  exit 0
}

gh discussion create `
  --repo $Repo `
  --category $Category `
  --title $Title `
  --body-file $BodyFile
