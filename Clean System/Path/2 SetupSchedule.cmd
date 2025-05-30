@echo off
set SCRIPT_PATH=C:\Path\To\CleanSystem.cmd

:: Create tasks at 8:00 AM, 1:00 PM, and 6:00 PM
schtasks /create /tn "CleanSystemMorning" /tr "%SCRIPT_PATH%" /sc daily /st 08:00 /rl highest /f
schtasks /create /tn "CleanSystemAfternoon" /tr "%SCRIPT_PATH%" /sc daily /st 13:00 /rl highest /f
schtasks /create /tn "CleanSystemEvening" /tr "%SCRIPT_PATH%" /sc daily /st 18:00 /rl highest /f

echo Scheduled tasks created.
pause
