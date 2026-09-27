@echo off
REM Nightly FULL UI sweep (526 windows, report windows included).
REM Python ka full path Task Scheduler ke liye — chahiye to adjust karo.
set PY=C:\Python314\python.exe
if not exist "%PY%" set PY=C:\Users\LENOVO\AppData\Local\Programs\Python\Python314\python.exe
if not exist "%PY%" set PY=python
cd /d "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
"%PY%" -u _qa\nightly_full_sweep.py --budget 3000 >> _qa\logs\nightly_runner.log 2>&1
exit /b %ERRORLEVEL%
