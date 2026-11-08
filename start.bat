@echo off
title NovaCraft Landing Page Server
echo ========================================================
echo   Starting NovaCraft Landing Page on http://localhost:3000...
echo ========================================================
set "PATH=%~dp0..\tools\node;%PATH%"
cd /d "%~dp0"
node server.js
pause
