@echo off
pip install pyinstaller
python -m PyInstaller --noconsole --onefile thingthis.py
cls
echo If this fails, launch the other batch script
timeout /t 1 >nul
cd dist
start "" "%~dp0\dist"
pause