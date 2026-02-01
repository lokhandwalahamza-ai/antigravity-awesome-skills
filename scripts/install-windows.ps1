# Antigravity Awesome Skills - Windows Global Installer
# Run this script in PowerShell as Administrator

param(
    [string]$InstallPath = "$env:USERPROFILE\.claude\skills"
)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Antigravity Awesome Skills Installer" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Set repository URL
$RepoUrl = "https://github.com/lokhandwalahamza-ai/antigravity-awesome-skills.git"
$TempDir = "$env:TEMP\antigravity-skills-temp"
$ClaudeDir = "$env:USERPROFILE\.claude"

# Clean up any previous temp installation
if (Test-Path $TempDir) {
    Write-Host "Cleaning up previous temp files..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force $TempDir
}

# Create directories
Write-Host "Creating directories..." -ForegroundColor Green
New-Item -ItemType Directory -Force -Path $ClaudeDir | Out-Null
New-Item -ItemType Directory -Force -Path $InstallPath | Out-Null

# Clone the repository
Write-Host "Cloning repository (255+ skills)..." -ForegroundColor Green
git clone --depth 1 $RepoUrl $TempDir

if (-not (Test-Path "$TempDir\skills")) {
    Write-Host "ERROR: Failed to clone repository" -ForegroundColor Red
    exit 1
}

# Copy all skills
Write-Host "Installing skills to $InstallPath..." -ForegroundColor Green
Copy-Item -Path "$TempDir\skills\*" -Destination $InstallPath -Recurse -Force

# Copy CLAUDE.md for auto-activation
Write-Host "Installing CLAUDE.md for auto-activation..." -ForegroundColor Green
Copy-Item -Path "$TempDir\CLAUDE.md" -Destination $ClaudeDir -Force

# Count installed skills
$SkillCount = (Get-ChildItem $InstallPath -Directory).Count

# Clean up temp directory
Write-Host "Cleaning up..." -ForegroundColor Green
Remove-Item -Recurse -Force $TempDir

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Installation Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Installed: $SkillCount skills" -ForegroundColor White
Write-Host "Location:  $InstallPath" -ForegroundColor White
Write-Host "Config:    $ClaudeDir\CLAUDE.md" -ForegroundColor White
Write-Host ""
Write-Host "Skills are now globally available in Claude Code!" -ForegroundColor Green
Write-Host ""
Write-Host "To verify, run:" -ForegroundColor Yellow
Write-Host "  Get-ChildItem $InstallPath -Directory | Measure-Object" -ForegroundColor Gray
