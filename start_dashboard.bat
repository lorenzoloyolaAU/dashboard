@echo off
title RTU Bridge Dashboard
cd /d "C:\Users\muham\Desktop\Dashboard"

:: Kill any previous instance on port 8050
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8050" 2^>nul') do (
    taskkill /PID %%a /F >nul 2>&1
)

echo Starting RTU Bridge Dashboard...
echo.
echo Once started, open: http://localhost:8050
echo.
echo Press Ctrl+C to stop the server.
echo.

"C:\Users\muham\Desktop\Dashboard\venv\Scripts\python.exe" "C:\Users\muham\Desktop\Dashboard\src\dashboard\app.py"
pause
