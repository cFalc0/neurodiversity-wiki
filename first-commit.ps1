# Navigate to the project folder
Set-Location -Path $PSScriptRoot

Write-Host "Working in: $PSScriptRoot"

# Remove the stale lock file if it exists
$lockFile = ".git\config.lock"
if (Test-Path $lockFile) {
    Remove-Item $lockFile -Force
    Write-Host "Removed stale config.lock"
}

# Re-init git (safe on existing repo)
git init

# Set user identity
git config user.name "Julio"
git config user.email "jrkb89@gmail.com"

# Stage everything
git add .

# First commit
git commit -m "init: folder structure, schema, raw sources, and first 7 wiki articles"

Write-Host ""
Write-Host "Done! First commit is in."
