@echo off
@chcp 65001 >nul 2>nul

echo.
echo   ============================================
echo     DiskCleaner v0.0.3 - Portable Edition
echo   ============================================
echo.

REM ── Start Everything (safe to call even if already running) ──
set "EVERYTHING=%~dp0Everything\Everything.exe"
if exist "%EVERYTHING%" (
    echo   Starting Everything for fast scanning...
    start "" /MIN "%EVERYTHING%" -startup
    echo.
)

echo   Starting DiskCleaner...
start "" "%~dp0DiskCleaner.exe"
