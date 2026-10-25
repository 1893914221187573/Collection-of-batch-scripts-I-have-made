@echo off
color a
echo Executing Pyflipper...
cd /d "%USERPROFILE%\Downloads\Flipper-Zero-Emulator-main\Flipper-Zero-Emulator-main" 2>nul || cd /d "%USERPROFILE%\Downloads\Flipper-Zero-Emulator-main"
echo --EXECUTED--
echo CLOSING THIS CMD ALSO CLOSES PYFLIPPER
call pyflipper.bat >nul
color a
cd ..
cd ..
cd ..
cls
exit
@echo on