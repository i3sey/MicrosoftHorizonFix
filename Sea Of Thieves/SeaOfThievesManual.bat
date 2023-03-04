@echo off

echo Executing MSGamesFix (v2.5) by @i3sey and @paxanddos.
echo If you have any issues please address them to https://github.com/i3sey/MicrosoftSharedGamesFix/issues
echo Waiting for Sea Of Theives to finally launch, your input and then killing explorer.exe.

start /high explorer.exe shell:AppsFolder\Microsoft.SeaofThieves_8wekyb3d8bbwe!AthenaClientShipping
SetLocal EnableExtensions
SetLocal ENABLEDELAYEDEXPANSION
Set app=SoTGame.exe
pause
timeout /T 10 /NOBREAK
taskkill /f /im explorer.exe

:loop
    tasklist | Find /i "%app%" || (goto Else)
:THEN
    timeout /T 5 /NOBREAK
    goto loop
:ELSE
    start explorer.exe
    exit
