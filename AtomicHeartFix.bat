@echo off

echo Executing MicrosoftFix (v2.5) by @paxanddos and @i3sey.
echo Waiting for Atomic Heart to finally launch and then killing explorer.exe.

"C:\XboxGames\Atomic Heart\Content\gamelaunchhelper.exe"
SetLocal EnableExtensions
SetLocal ENABLEDELAYEDEXPANSION
Set app=AtomicHeart-WinGDK-Shippi
timeout /T 60 /NOBREAK
taskkill /f /im explorer.exe

:loop
    tasklist | Find /i "%app%" || (goto Else)
:THEN
    timeout /T 5 /NOBREAK
    goto loop
:ELSE
    start explorer.exe
    exit
