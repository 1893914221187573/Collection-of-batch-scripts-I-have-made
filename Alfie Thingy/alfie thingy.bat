@echo off
chcp 65001 >nul
goto banner

:banner
echo.
echo.
echo         ###    ##       ######## #### ########    ######## ##     ## #### ##    ##  ######   ##    ## 
echo        ## ##   ##       ##        ##  ##             ##    ##     ##  ##  ###   ## ##    ##   ##  ##  
echo       ##   ##  ##       ##        ##  ##             ##    ##     ##  ##  ####  ## ##          ####   
echo      ##     ## ##       ######    ##  ######         ##    #########  ##  ## ## ## ##   ####    ##    
echo      ######### ##       ##        ##  ##             ##    ##     ##  ##  ##  #### ##    ##     ##    
echo      ##     ## ##       ##        ##  ##             ##    ##     ##  ##  ##   ### ##    ##     ##    
echo      ##     ## ######## ##       #### ########       ##    ##     ## #### ##    ##  ######      ##   batch shit
echo.
echo                                                                            Press any key to start!
echo.
echo.
pause >nul
goto loop

:loop
echo Alfie's favourite number is %random%!
timeout /t 1 >nul
goto loop