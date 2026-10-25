@echo off
echo Launching, this might take a bit... Run this in the Console Host Terminal so it looks better visually!
setlocal Enabledelayedexpansion
for /f "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set "ESC=%%b"
set "BL=%ESC%[94m"
set "CUT=%ESC%[0m"
set "RED=%ESC%[31m"
set "GR=%ESC%[92m"
for /f "tokens=*" %%a in ('time /t') do set "mytime=%%a"
for /f "tokens=*" %%a in ('powershell -NoProfile -Command "[math]::round((Get-PSDrive $env:SystemDrive.substring(0,1)).Free).ToString('#,0') + ' bytes free'"') do set "freebytes=%%a"
if not "%~1"=="MAXIMIZED" (
    start "" /max cmd /c ""%~f0" MAXIMIZED"
    exit /b
)
chcp 65001 >nul
color 4

:banner
cls
echo.
echo.
echo.
echo       ▄▀▀▀▀▄   ▄▀▀▀█▄    ▄▀▀▀▀▄  ▄▀▀▀█▀▀▄  ▄▀▀▀▀▄   ▄▀▀▄ ▄▀▀▄   
echo      █        █  ▄▀  ▀▄ █ █   ▐ █    █  ▐ █      █ █   █    █   
echo      █    ▀▄▄ ▐ █▄▄▄▄      ▀▄   ▐   █     █      █ ▐  █    █  
echo      █     █ █ █    ▐   ▀▄   █     █       ▀▄▄▄▄▀▄   █    █     
echo      ▐▀▄▄▄▄▀ ▐ █         █▀▀▀    ▄▀               █   ▀▄▄▄▄▀  
echo      ▐        █          ▐      █                 ▐           
echo      ▐        ▐           
echo.
echo.                  
echo                       %GR%Microsoft Windows [Version 10.0.26200.9711]
echo                       (c) Microsoft Corporation. All rights reserved.
echo.
echo                       %USERPROFILE%^> color a
echo                       %USERPROFILE%^> cd Documents
echo                       %USERPROFILE%\Documents^> cd Virus
echo                       %USERPROFILE%\Documents\Virus^> pip install pyinstaller
echo                       Collecting pyinstaller
echo                         Downloading pyinstaller-latest-py3-none-win_amd64.whl (404.69 MB)
echo                            %CUT%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ %GR%00.00/404.69 MB 50.00 MB/s eta 0:00:10
echo                       Collecting pyinstaller-hooks-contrib^>=202X.x (from pyinstaller)
echo                         Downloading pyinstaller_hooks_contrib-202X.x-py3-none-any.whl (320 kB)
echo                       Collecting altgraph (from pyinstaller)
echo                         Downloading altgraph-0.x.x-py2.py3-none-any.whl (3 kB)
echo                       Collecting packaging^>=22.0 (from pyinstaller)
echo                         Using cached packaging-24.x-py3-none-any.whl (xx kB)
echo                       Successfully installed pyinstaller!
echo                       %USERPROFILE%\Documents\Virus^> dir
echo                        Volume in drive C is Local Disk
echo                        Volume Serial Number is T14L-64GR
echo.
echo                        Directory of %USERPROFILE%\Documents\Virus
echo.
echo                        %date:~0,2%/%date:~3,2%/%date:~6,4% %mytime%    ^<DIR^>          .
echo                        %date:~0,2%/%date:~3,2%/%date:~6,4% %mytime%    ^<DIR^>          ..
echo                        %date:~0,2%/%date:~3,2%/%date:~6,4% %mytime%                   build.py
echo                                      1 File(s)        803,000 bytes
echo                                      2 dir(s)  %freebytes%
echo.
echo                       %USERPROFILE%\Documents\Virus^> python -m PyInstaller --onefile --nonconsole --log-level WARN build.py
echo.
echo %BL%I am haxxor...%RED%
echo.
echo.
echo.
echo %RED%What do you want the %BL%GrstQU%RED% to do?
echo      0 Exit
echo      1 Shutdown PC
echo        1.1 Shutdown PC at a scheduled time
echo      2 Restart PC
echo        2.2 Restart PC at a scheduled time
echo      3 Auto-mstsc to an ip
echo      4 Open any batch file
echo      5 Open any .exe file
echo      6 Open any .py file
echo      7 Open IExpress
echo      8 Open a new CMD and exit %BL%GrstQU%RED%
echo        8.8 Open a new CMD but keep %BL%GrstQU%RED% open

set "choice="
set /p "choice=Input: "
if "%choice%"=="0" goto exit
if "%choice%"=="1" goto one
if "%choice%"=="1.1" goto onepoint
if "%choice%"=="2" goto two
if "%choice%"=="2.2" goto twopoint
if "%choice%"=="3" goto three
if "%choice%"=="4" goto four
if "%choice%"=="5" goto five
if "%choice%"=="6" goto six
if "%choice%"=="7" goto seven
if "%choice%"=="8" goto eight
if "%choice%"=="8.8" goto eightpoint
goto banner

:one
shutdown /s /t 0
goto banner

:onepoint
set "waittime="
set /p "waittime=How many seconds until your PC automatically shuts down? "
shutdown /s /t %waittime%
goto banner

:two
shutdown /r /t 0
goto banner

:twopoint
set "waittime2="
set /p "waittime2=How many seconds until your PC automatically restarts? "
shutdown /r /t %waittime2%
goto banner

:three
set "msts="
set "user="
set "pass="
set /p "msts=Target IP: "
set /p "user=Username: "
set /p "pass=Password: "
cmdkey /generic:"%msts%" /user:"%user%" /pass:"%pass%"
start mstsc /v:%msts% /f
goto banner

:four
set "target_dir="
set /p "target_dir=Batch file directory: "
start "" cmd /c "%target_dir%"
goto banner

:five
set /p "file=EXE File: "
call %file%
goto banner

:six
set /p "pie=Python file: "
python %pie%
goto banner

:seven
echo Choose from the extra flags (If you want none of them, just press enter without typing anything)!
echo Displaying an IExpress error showing all of the flags...
iexpress /c
set /p "expressflag=Type flags manually (/X /X as an example of >1 flag, /X normally is an example of =1 flag): "
iexpress %expressflag%

:eight
start "" cmd
exit /b

:eightpoint
start "" cmd

:exit
cls
goto exitbanner
exit /b

:exitbanner
echo      %GR%######## ##     ## #### ######## #### ##    ##  ######   #### 
echo      ##        ##   ##   ##     ##     ##  ###   ## ##    ##  #### 
echo      ##         ## ##    ##     ##     ##  ####  ## ##        #### 
echo      ######      ###     ##     ##     ##  ## ## ## ##   ####  ##  
echo      ##         ## ##    ##     ##     ##  ##  #### ##    ##       
echo      ##        ##   ##   ##     ##     ##  ##   ### ##    ##  #### 
echo      ######## ##     ## ####    ##    #### ##    ##  ######   #### the program...
timeout /t 1 >nul