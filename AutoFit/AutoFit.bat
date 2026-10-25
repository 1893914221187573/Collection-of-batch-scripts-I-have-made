@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "config_file=%~dp0torrent_config.txt"

:ConfigCheck
if exist "%config_file%" goto LoadConfig

:PromptUser
echo [!] Configuration file not found.
echo Enter the full path to ur torrent client (.exe):
set /p "user_input="

set "user_input=!user_input:"=!"

if not defined user_input (
    echo [X] No path entered.
    pause
    goto PromptUser
)

> "%config_file%" echo(!user_input!
echo [+] Configuration saved.

:LoadConfig
set "torrent_exe="

for /f "usebackq delims=" %%A in ("%config_file%") do (
    set "torrent_exe=%%A"
)

if not defined torrent_exe (
    echo [X] Configuration file is empty.
    pause
    goto PromptUser
)

if not exist "!torrent_exe!" (
    echo [X] Torrent client was not found:
    echo !torrent_exe!
    pause
    goto PromptUser
)

echo -- NOTICE --
echo This launcher is intended for FitGirl repacks.
echo Deleting torrent_config.txt resets the saved client path.
echo ------------------
goto start

:start
echo Options:
echo 1. Start any .torrent
echo 2. Open a previously torrented repack
echo 3. Exit AutoFit

set /p "input=Option: "
if "!input!"=="1" goto torrent-sta
if "!input!"=="2" goto fg-launch
if "!input!"=="3" exit /b

:torrent-sta
cls
color 1
set /p "torrent=Torrent path [99: Menu]: "
if "!torrent!"=="99" goto loop
start "" /WAIT %torrent%
cls
goto start

:fg-launch
cls
color c
set /p "dire=Folder Directory to root of FitGirl repack folder [99: Menu]: "
if "!dire!"=="99" goto loop
cd %dire%
echo A UAC popup might show up. If it doesen't, look for a blue and yellow shield on your taskbar,
start "" "Verify BIN files before installation.bat"
call setup.exe
cls
goto start

:loop
color 07
cls
goto start