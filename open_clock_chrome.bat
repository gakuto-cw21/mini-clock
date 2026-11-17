@echo off
setlocal
set "CLOCK_HTML=%~dp0index.html"
if not exist "%CLOCK_HTML%" (
  echo index.html was not found in the same folder.
  pause
  exit /b 1
)
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" (
  echo Google Chrome was not found.
  pause
  exit /b 1
)
for /f "delims=" %%I in ('powershell.exe -NoProfile -Command "([System.Uri]::new($env:CLOCK_HTML)).AbsoluteUri"') do set "CLOCK_URL=%%I"
if not defined CLOCK_URL (
  echo Could not convert the file path to a URL.
  pause
  exit /b 1
)
start "" "%CHROME%" --app="%CLOCK_URL%" --window-size=320,175
endlocal
