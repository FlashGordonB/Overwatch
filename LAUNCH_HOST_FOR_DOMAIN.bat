@echo off
setlocal

cd /d "%~dp0"

where npm >nul 2>nul
if errorlevel 1 (
  echo npm was not found in PATH.
  echo Install Node.js and reopen this script.
  pause
  exit /b 1
)

set "PORT=3010"
set "HOST=127.0.0.1"
set "PUBLIC_ORIGIN=https://spin.bownsfam.app"

echo Starting Party Character Spinner for domain hosting...
echo HOST=%HOST%
echo PORT=%PORT%
echo PUBLIC_ORIGIN=%PUBLIC_ORIGIN%
echo.

start "Party Spinner Server" cmd /k "cd /d %~dp0 && set HOST=%HOST% && set PORT=%PORT% && set PUBLIC_ORIGIN=%PUBLIC_ORIGIN% && npm start"

timeout /t 2 /nobreak >nul

echo Open:
echo %PUBLIC_ORIGIN%/host
echo %PUBLIC_ORIGIN%/view
echo.
echo Ensure your reverse proxy points %PUBLIC_ORIGIN% to http://%HOST%:%PORT%.
pause
