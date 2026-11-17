@echo off
setlocal
set "CLOCK_HTML=%~dp0index.html"
if not exist "%CLOCK_HTML%" (
  echo index.html was not found in the same folder.
  pause
  exit /b 1
)
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%LocalAppData%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" (
  echo Microsoft Edge was not found. Please install Edge or use the Chrome launcher.
  pause
  exit /b 1
)
for /f "delims=" %%I in ('powershell.exe -NoProfile -Command "([System.Uri]::new($env:CLOCK_HTML)).AbsoluteUri"') do set "CLOCK_URL=%%I"
if not defined CLOCK_URL (
  echo Could not convert the file path to a URL.
  pause
  exit /b 1
)
start "" "%EDGE%" --app="%CLOCK_URL%" --window-size=320,175
endlocal
