@echo off
rem Event Registration - zapusk z drukom bez dialogu (Toshiba mae buty pryntrom za zamovchuvanniam)
set "URL=https://vlgook.github.io/event-registration/?kiosk=1"
set "CH=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CH%" set "CH=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CH%" set "CH=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if exist "%CH%" goto run
set "CH=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%CH%" set "CH=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%CH%" goto run
echo Ne znaydeno Google Chrome abo Microsoft Edge.
pause
exit /b 1
:run
start "" "%CH%" --kiosk-printing --user-data-dir="%LocalAppData%\EventRegistration" --app="%URL%"
