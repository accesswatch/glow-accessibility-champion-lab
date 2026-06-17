# setup-glow-capstone.ps1
# Creates the GLOW Accessibility Champion Lab repository structure.
# Run from the repository root.

$ErrorActionPreference = "Stop"

$directories = @(
  ".vscode",
  ".github/ISSUE_TEMPLATE",
  ".github/workflows",
  "00-capstone-overview",
  "01-module-ai-foundations",
  "02-module-generative-ai/prompts",
  "02-module-generative-ai/outputs",
  "03-module-ai-productivity",
  "04-module-critical-thinking",
  "05-module-governance",
  "06-module-campus-champion",
  "templates",
  "ahg-implementation",
  "wiki-source",
  "tools"
)

foreach ($dir in $directories) {
  New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

Write-Host "Directory structure created."
Write-Host "Next: review the files created by Claude Code and run git add .; git commit -m 'Create GLOW capstone structure'"
