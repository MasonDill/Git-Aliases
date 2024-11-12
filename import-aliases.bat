@echo off
setlocal enabledelayedexpansion

:: Check if aliases.txt exists
if not exist aliases.txt (
    echo aliases.txt not found!
    exit /b 1
)

:: Read aliases.txt and configure git
for /f "tokens=1,* delims= " %%A in (aliases.txt) do (
    git config --global %%A "%%B"
)

echo Git aliases have been configured.
endlocal
