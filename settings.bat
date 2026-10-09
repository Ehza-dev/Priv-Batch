@echo off
:: === Taskbar Tweaks ===
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAl /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarMn /t REG_DWORD /d 0 /f

:: === Personalization Tweaks ===
start "" "%WinDir%\Resources\Themes\themeA.theme"

:: === Restart Explorer ===
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

:: === Add CMS Keyboard & Set Default ===
reg add "HKCU\Keyboard Layout\Substitutes" /v 00001009 /t REG_SZ /d 00011009 /f
reg add "HKCU\Keyboard Layout\Preload" /v 1 /t REG_SZ /d 00011009 /f

:: === Create FastReboot.bat on Desktop ===
(
    echo @echo off
    echo shutdown /f /r /t 3
) > "%USERPROFILE%\Desktop\FastReboot.bat"

echo Taskbar settings applied.
echo Personalization applied.
echo Keyboard layout set to CMS.
echo FastReboot.bat created on Desktop.
pause