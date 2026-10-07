@echo off
setlocal enabledelayedexpansion

title HMS Serial Key Generator - ALL Years
color 0B

:: ---- SET YOUR PATHS HERE ----
set PYTHON=python
set SCRIPT_DIR=%~dp0
set SCRIPT=%SCRIPT_DIR%serialkey_cli.py

:: ---- Check Python ----
where %PYTHON% >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Python not found! Install Python 3.8+
    pause
    exit /b 1
)

:: ---- Check Script ----
if not exist "%SCRIPT%" (
    cls
    echo ================================================================
    echo   ERROR: serialkey_cli.py not found!
    echo ================================================================
    echo.
    echo   Expected: %SCRIPT%
    echo.
    pause
    exit /b 1
)

:: ---- Generate ALL Keys ----
cls
echo ================================================================
echo   HMS SERIAL KEY GENERATOR - ALL YEARS
echo ================================================================
echo.
echo  This will:
echo    1. Read company data from [DefaultDataBSE] in Analysis.ini
echo    2. Generate serial keys for ALL 9 year prefixes
echo    3. Create HMSKey_*.Txt files for each company/year
echo    4. Create consolidated text file SerialKeys_AllYears_*.Txt
echo.
echo ================================================================
echo.

:: Pipe Y to select menu option [Y], then y to confirm "Generate all?"
(echo Y & echo y) | %PYTHON% "%SCRIPT%" "%SCRIPT_DIR%"

echo.
echo ================================================================
echo   DONE! Press any key to close this window.
echo ================================================================
pause >nul
exit /b 0
