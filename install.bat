@echo off
echo === Installing AutoHotkey v2 ===
winget install -e --id AutoHotkey.AutoHotkey
echo.
echo === Enabling F10/F8 at Windows startup ===
copy /Y "%~dp0wa.ahk" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\wa.ahk"
start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\wa.ahk"
echo.
echo === Opening Chrome shortcuts: assign Alt+K to Claude ===
start chrome "chrome://extensions/shortcuts"
echo.
echo Done! F10 = open WhatsApp + Claude.  Hold F8 = speak, release = send.
pause
