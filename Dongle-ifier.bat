@echo off
color 9
chcp 65001 >nul
goto banner

:banner
echo.
echo.
echo     WWW      WWW    
echo   M888M    M888M   
echo   8888888  8888888  
echo  KKKKKKKKKKKKKKKKKK 
echo  88888 888888 88888 
echo  KKKK   KKKK   KKKK 
echo   MMM          MMM  
echo    WWWW      WWWW   
echo      MM      MM
echo        M         alwarebytes and Windows Defender Opener
echo. 
echo     (You need Malwarebytes installed for this to work!) 
echo.
echo..
timeout /t 2 >nul
start windowsdefender:
start "" "C:\Program Files\Malwarebytes\Anti-Malware\mbam.exe"