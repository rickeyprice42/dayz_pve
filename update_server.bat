@echo off
setlocal

title DayZ Server Updater
cd /d "%~dp0"

echo ========================================
echo DayZ Server Repository Updater
echo ========================================
echo.

where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed or is not available in PATH.
    echo Install Git for Windows and run this file again.
    echo.
    pause
    exit /b 1
)

if not exist ".git" (
    echo This folder is not a Git repository.
    echo Make sure update_server.bat is inside the DayZ server repo.
    echo.
    pause
    exit /b 1
)

tasklist /FI "IMAGENAME eq DayZServer_x64.exe" | find /I "DayZServer_x64.exe" >nul
if not errorlevel 1 (
    echo The DayZ server is currently running.
    echo Stop the server before updating the repository.
    echo.
    pause
    exit /b 1
)

set "branch="
for /f "delims=" %%I in ('git branch --show-current 2^>nul') do set "branch=%%I"
if not defined branch set "branch=main"

echo Current branch: %branch%
echo.
echo Fetching latest changes...
git fetch origin
if errorlevel 1 (
    echo.
    echo Failed to fetch updates from origin.
    echo Check your internet connection and Git remote settings.
    echo.
    pause
    exit /b 1
)

echo.
echo Pulling updates from origin/%branch%...
git pull --ff-only origin %branch%
if errorlevel 1 (
    echo.
    echo Update failed.
    echo If Git reported local changes or conflicts, resolve them first.
    echo.
    pause
    exit /b 1
)

echo.
echo Update completed successfully.
echo You can close this window or start the server now.
echo.
pause
exit /b 0
