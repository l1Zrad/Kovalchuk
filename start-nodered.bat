@echo off
cd /d "%~dp0"

cd /d "tools\nodered" 2>nul || cd /d "..\tools\nodered" 2>nul || cd /d "%USERPROFILE%\OneDrive\Desktop\Курсовая\tools\nodered"

node node_modules\node-red\red.js
pause
