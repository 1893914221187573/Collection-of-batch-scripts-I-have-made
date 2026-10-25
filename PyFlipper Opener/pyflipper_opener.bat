@echo off
color a
echo For this to work, you need to have the Flipper emulator installed in your Downloads directory and extracted.
echo Pausing to let you download it... If you have this already downloaded and extracted, press any key.
echo On the website opened, click the green "Code" button and select 'Download ZIP'. Then extract it to your Downloads folder.
start "" "https://github.com/ZDStudios/Flipper-Zero-Emulator"
pause >nul
echo --------------------------------------------------------------------------------------------------------------------
echo Verifying if executable...
echo Checking if Python is installed...
winget install Python.Python.3.14 --silent
color a
python --version
color a
echo Checking if pygame is installed...
pip install pygame
color a
echo --------------------------------------------------------------------------------------------------------------------
echo Verified!
echo --------------------------------------------------------------------------------------------------------------------
echo Executing Pyflipper...
cd /d "%USERPROFILE%\Downloads\Flipper-Zero-Emulator-main\Flipper-Zero-Emulator-main" 2>nul || cd /d "%USERPROFILE%\Downloads\Flipper-Zero-Emulator-main"
echo --EXECUTED--
echo CLOSING THIS CMD ALSO CLOSES PYFLIPPER
call pyflipper.bat >nul
color 0
cd ..
cd ..
cd ..
exit
@echo on