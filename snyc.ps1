# sync.ps1
# Copies all Markdown files from the ai-instructions repository
# into all other project folders in the same parent directory.

# Directory where this script lives (= ai-instructions)
$SourceDir = $PSScriptRoot

# Parent directory containing all projects
$ParentDir = Split-Path $SourceDir -Parent


# Iterate over all project folders
Get-ChildItem $ParentDir -Directory | ForEach-Object {

    # Skip the ai-instructions repository itself
    if ($_.FullName -ne $SourceDir) {

        $ProjectDir = $_.FullName

        Write-Host "Syncing $($_.Name)..."

        # Find all Markdown files in the source repository
        # -Recurse also includes nested folders like skills/ and rules/
        Get-ChildItem $SourceDir -Recurse -File -Filter "*.md" |
        ForEach-Object {

            # Get the relative path inside the source repository
            # Example:
            # skills/caveman/SKILL.md
            $RelativePath = $_.FullName.Substring($SourceDir.Length + 1)

            # Build the destination path inside the project
            $TargetFile = Join-Path $ProjectDir $RelativePath

            # Make sure the destination folder exists
            # Example: create skills/caveman if it does not exist yet
            $TargetDir = Split-Path $TargetFile -Parent

            New-Item `
                -ItemType Directory `
                -Force `
                $TargetDir | Out-Null

            # Copy the file and overwrite existing versions
            Copy-Item `
                $_.FullName `
                $TargetFile `
                -Force

            Write-Host "  Copied: $RelativePath"
        }

        Write-Host "Done: $($_.Name)"
        Write-Host ""
    }
}

Write-Host "Finished syncing AI instructions."