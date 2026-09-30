@echo off
REM HMS PERSISTENT CMD LAUNCHER
REM Path: C:\Drive\HMS2526\hms.bat

:start
title HMS UNIVERSAL CLI SYSTEM [PERSISTENT]
color 0A
cls

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH.
    echo Please install Python to run the HMS logic.
    echo Press any key to try again...
    pause >nul
    goto start
)

:: Run the HMS Logic Engine
cd /d "C:\Drive\HMS2526"
python hms_cli.py

:: If the program exits (even with error), restart it automatically
echo.
echo [!] HMS Engine terminated at %time%.
echo [!] Restarting in 3 seconds... (Press Ctrl+C to cancel)
timeout /t 3 >nul
goto start
