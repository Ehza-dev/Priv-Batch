@echo off
:: === Taskbar Tweaks ===
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAl /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarMn /t REG_DWORD /d 0 /f

::	===	Personalization Tweaks	===
start "" "%WinDir%\Resources\Themes\themeA.theme"


::  === Restart explorer    ===
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

::  === Add CMS & set default ===
reg add "HKCU\Keyboard Layout\Substitutes" /v 00001009 /t REG_SZ /d 00011009 /f
reg add "HKCU\Keyboard Layout\Preload" /v 1 /t REG_SZ /d 00001009 /f

echo Taskbar settings applied.
echo Personalization applied.
pause