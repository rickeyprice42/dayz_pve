$sourceRoot = Split-Path -Parent $PSScriptRoot
$modName = "Grimhold"
$outputRoot = Join-Path (Split-Path -Parent $sourceRoot) "..\\@Grimhold"
$resolvedOutputRoot = [System.IO.Path]::GetFullPath($outputRoot)

$requiredTextures = @(
    "grimhold_01.paa",
    "grimhold_02.paa",
    "grimhold_03.paa",
    "grimhold_04.paa"
) | ForEach-Object { Join-Path $sourceRoot "GUI\\LoadingScreens\\$_" }

$missingTextures = $requiredTextures | Where-Object { -not (Test-Path $_) }

if ($missingTextures.Count -gt 0)
{
    Write-Host "Missing converted texture files:" -ForegroundColor Yellow
    $missingTextures | ForEach-Object { Write-Host " - $_" }
    Write-Host ""
    Write-Host "Copy or convert the loading screen textures into GUI\\LoadingScreens before building." -ForegroundColor Yellow
    exit 1
}

Write-Host "Source is ready for build." -ForegroundColor Green
Write-Host "Expected output folder: $resolvedOutputRoot"
Write-Host ""
Write-Host "Automatic PBO build is not wired yet because DayZ Tools were not detected in the current environment."
Write-Host "Next manual steps:"
Write-Host "  1. Open DayZ Tools / Workbench."
Write-Host "  2. Convert PNG files in Data\\LoadingScreen to EDDS with matching names."
Write-Host "  3. Build the addon from src\\Grimhold into @Grimhold\\addons."
Write-Host "  4. Sign the PBO and place the .bikey in the server keys folder."
