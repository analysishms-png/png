@echo off
setlocal enabledelayedexpansion

title HMS Serial Key Manager
color 0A

:: ---- SET YOUR PATHS HERE ----
:: Change these if Python or script location differs on your system
set PYTHON=python
set SCRIPT_DIR=%~dp0
set SCRIPT=%SCRIPT_DIR%serialkey_cli.py

:: ---- Check Python ----
where %PYTHON% >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    cls
    echo ================================================================
    echo   ERROR: Python not found!
    echo ================================================================
    echo.
    echo   Please install Python 3.8+ from: https://python.org
    echo.
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
    echo   Expected location: %SCRIPT%
    echo.
    pause
    exit /b 1
)

:: ---- Launch ----
cls
echo ================================================================
echo   HMS Serial Key Manager
echo ================================================================
echo.
echo   Script : %SCRIPT%
echo.
echo ================================================================
echo.
%PYTHON% "%SCRIPT%" "%SCRIPT_DIR%"

echo.
echo   Press any key to close this window...
pause >nul
exit /b 0
