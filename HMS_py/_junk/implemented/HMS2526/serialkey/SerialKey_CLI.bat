@echo off
setlocal enabledelayedexpansion

title SerialKey CLI - HMS License Manager
color 0A

:: ============================================================
::  STANDALONE Launcher for serialkey_cli.py
::  Place this .bat in C:\Drive\HMS2526\ (HMS root folder)
::  and it will automatically find serialkey_cli.py in the
::  serialkey\ subdirectory.
:: ============================================================

:: --- Resolve paths ---
:: %~dp0 gives the folder this batch file is running from (with trailing \)
set HMS_DIR=%~dp0
:: Remove trailing backslash for cleaner paths
if "%HMS_DIR:~-1%"=="\" set HMS_DIR=%HMS_DIR:~0,-1%

set SCRIPT_DIR=%HMS_DIR%\serialkey
set SCRIPT=%SCRIPT_DIR%\serialkey_cli.py

:: ---- Check Python ----
where python >nul 2>nul
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

:: ---- Check script exists ----
if not exist "%SCRIPT%" (
    cls
    echo ================================================================
    echo   ERROR: serialkey_cli.py not found!
    echo ================================================================
    echo.
    echo   Expected: %SCRIPT%
    echo.
    echo   Make sure the serialkey\ folder exists alongside this batch
    echo   file and contains serialkey_cli.py.
    echo.
    pause
    exit /b 1
)

:: ---- Launch ----
cls
echo ================================================================
echo            SerialKey CLI - HMS License Manager
echo ================================================================
echo.
echo   Root:    %HMS_DIR%
echo   Script:  serialkey\serialkey_cli.py
echo.
echo ================================================================
echo.
python "%SCRIPT%" "%SCRIPT_DIR%"

:: ---- After script exits ----
echo.
echo ================================================================
echo   SerialKey CLI session ended.
echo   Press any key to close this window...
echo ================================================================
pause >nul
exit /b 0
