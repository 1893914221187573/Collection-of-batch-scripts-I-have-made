@echo off
color a
chcp 65001 >nul
echo Running the CMD
echo cd'ing to Desktop
echo executing the bat in the shadows...
echo STATUS - READY/SUCCESS
echo ----------------------------
timeout /t 2 >nul
echo             RUN
echo ----------------------------

goto banner

:banner
echo.
echo.
echo    ___   _      __            ___  __      
echo   / _ \ /_\    / /   /\/\    /___\/ _\     
echo  / /_\\//_\\  / /   /    \  //  //\ \      
echo / /_\\/  _  \/ /___/ /\/\ \/ \_// _\ \  - a.k.a da thingy 
echo \____/\_/ \_/\____/\/    \/\___/  \__/
echo.
echo      L3D Z3PP3L1N#K1LLSVV1TCH 3NG4G3
echo                        Example text/
pause
