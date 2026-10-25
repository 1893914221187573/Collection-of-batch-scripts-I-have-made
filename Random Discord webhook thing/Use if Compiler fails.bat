@echo off
pip install pyinstaller
py -3.13 -m PyInstaller --noconsole --onefile thingthis.py
cls
cd dist
start "" "%~dp0\dist"