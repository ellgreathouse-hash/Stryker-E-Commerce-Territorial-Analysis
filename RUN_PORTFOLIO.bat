@echo off
setlocal
cd /d "%~dp0"
echo Recalculating targeting scores...
where python >nul 2>nul
if %errorlevel%==0 (
  python "Automation\run_scoring.py"
) else (
  powershell -NoProfile -ExecutionPolicy Bypass -File "Automation\Run-Scoring.ps1"
)
if errorlevel 1 (
  echo.
  echo Scoring refresh failed. Opening the prebuilt dashboard instead.
)
start "" "%~dp0START_HERE.html"
