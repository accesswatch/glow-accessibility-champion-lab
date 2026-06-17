# Fix-Markdown-And-ExportHtml.ps1
# Crawls a repo for Markdown files, fixes markdownlint issues where possible,
# then converts each Markdown file to HTML using Pandoc.

[CmdletBinding()]
param(
    [string]$Root = (Get-Location).Path,

    # Put generated HTML files beside each Markdown file.
    [switch]$InPlaceHtml = $true,

    # Optional: put all HTML output under one folder instead.
    [string]$OutputFolder = "",

    # Skip markdownlint fixing if you only want conversion.
    [switch]$SkipMarkdownFix,

    # Skip Pandoc conversion if you only want lint fixing.
    [switch]$SkipHtmlConversion
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Step {
    param([string]$Message)
    Write-Host ""
    Write-Host "==> $Message"
}

function Test-Command {
    param([string]$Name)

    $cmd = Get-Command $Name -ErrorAction SilentlyContinue
    return $null -ne $cmd
}

function Get-MarkdownFiles {
    param([string]$SearchRoot)

    $excludedDirs = @(
        ".git",
        "node_modules",
        ".venv",
        "venv",
        "env",
        "dist",
        "build",
        "out",
        "coverage",
        ".next",
        ".vite",
        ".cache",
        "vendor"
    )

    Get-ChildItem -Path $SearchRoot -Recurse -File -Include *.md, *.markdown |
    Where-Object {
        $full = $_.FullName

        foreach ($dir in $excludedDirs) {
            if ($full -match [regex]::Escape("\$dir\")) {
                return $false
            }
        }

        return $true
    } |
    Sort-Object FullName
}

function Get-HtmlOutputPath {
    param(
        [System.IO.FileInfo]$MarkdownFile,
        [string]$RepoRoot,
        [string]$HtmlRoot
    )

    if ([string]::IsNullOrWhiteSpace($HtmlRoot)) {
        return [System.IO.Path]::ChangeExtension($MarkdownFile.FullName, ".html")
    }

    $relativePath = [System.IO.Path]::GetRelativePath($RepoRoot, $MarkdownFile.FullName)
    $relativeHtmlPath = [System.IO.Path]::ChangeExtension($relativePath, ".html")
    return Join-Path $HtmlRoot $relativeHtmlPath
}

Write-Step "Starting Markdown cleanup and HTML conversion"
Write-Host "Repo root: $Root"

if (-not (Test-Path $Root)) {
    throw "Root path does not exist: $Root"
}

$Root = (Resolve-Path $Root).Path

if (-not (Test-Command "npx")) {
    throw "npx was not found. Install Node.js first, then try again."
}

if (-not $SkipHtmlConversion -and -not (Test-Command "pandoc")) {
    throw "pandoc was not found. Install Pandoc first, then try again."
}

Push-Location $Root

try {
    $markdownFiles = @(Get-MarkdownFiles -SearchRoot $Root)

    if ($markdownFiles.Count -eq 0) {
        Write-Host "No Markdown files found."
        exit 0
    }

    Write-Host "Found $($markdownFiles.Count) Markdown file(s)."

    if (-not $SkipMarkdownFix) {
        Write-Step "Fixing Markdown lint issues with markdownlint-cli2"

        # Uses your repo config if present:
        # .markdownlint-cli2.jsonc, .markdownlint.json, .markdownlint.yaml, etc.
        #
        # --fix repairs only rules that markdownlint can safely auto-fix.
        & npx --yes markdownlint-cli2 --fix "**/*.md" "#node_modules" "#.git" "#dist" "#build" "#vendor"

        if ($LASTEXITCODE -ne 0) {
            Write-Warning "markdownlint-cli2 finished with remaining lint errors. Auto-fixable issues were still applied where possible."
        }
    }
    else {
        Write-Host "Skipping Markdown lint fixing."
    }

    if (-not $SkipHtmlConversion) {
        Write-Step "Converting Markdown files to HTML with Pandoc"

        $htmlRoot = ""

        if (-not [string]::IsNullOrWhiteSpace($OutputFolder)) {
            $htmlRoot = Join-Path $Root $OutputFolder
            New-Item -ItemType Directory -Path $htmlRoot -Force | Out-Null
            Write-Host "HTML output folder: $htmlRoot"
        }

        $converted = 0
        $failed = 0

        foreach ($file in $markdownFiles) {
            $outputPath = Get-HtmlOutputPath `
                -MarkdownFile $file `
                -RepoRoot $Root `
                -HtmlRoot $htmlRoot

            $outputDir = Split-Path $outputPath -Parent
            New-Item -ItemType Directory -Path $outputDir -Force | Out-Null

            Write-Host "Converting: $([System.IO.Path]::GetRelativePath($Root, $file.FullName))"

            try {
                & pandoc `
                    --from markdown+smart `
                    --to html5 `
                    --standalone `
                    --embed-resources `
                    --metadata "title=$($file.BaseName)" `
                    --output "$outputPath" `
                    "$($file.FullName)"

                if ($LASTEXITCODE -eq 0) {
                    $converted++
                }
                else {
                    $failed++
                    Write-Warning "Pandoc failed for: $($file.FullName)"
                }
            }
            catch {
                $failed++
                Write-Warning "Pandoc failed for: $($file.FullName)"
                Write-Warning $_.Exception.Message
            }
        }

        Write-Step "HTML conversion complete"
        Write-Host "Converted: $converted"
        Write-Host "Failed:    $failed"
    }
    else {
        Write-Host "Skipping HTML conversion."
    }

    Write-Step "Done"
    Write-Host "Review changes with:"
    Write-Host "  git diff"
}
finally {
    Pop-Location
}
