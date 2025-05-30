@echo off
echo Cleaning temporary files and browser cache...
echo.

:: Clean Windows Temp folders
echo Deleting Temp files...
del /q /f /s "%TEMP%\*"
del /q /f /s "C:\Windows\Temp\*"

:: Clean Chrome cache (if installed)
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    echo Clearing Chrome Cache...
    rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"
)

:: Clean Edge cache (if installed)
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    echo Clearing Edge Cache...
    rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache"
)

:: Clean Firefox cache (if installed)
for /D %%i in ("%APPDATA%\Mozilla\Firefox\Profiles\*") do (
    if exist "%%i\cache2" (
        echo Clearing Firefox Cache in %%i...
        rd /s /q "%%i\cache2"
    )
)

echo.
echo Cleaning complete.
pause
