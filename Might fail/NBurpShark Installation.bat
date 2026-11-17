@echo off
echo I EAT BEANS
echo This takes very long but is automatic apart from doing the installer part.
color a
echo VERIFICATION STATE
winget install WiresharkFoundation.Wireshark --accept-source-agreements --accept-package-agreements
winget install PortSwigger.BurpSuite.Community --silent --accept-source-agreements --accept-package-agreements
winget install Insecure.Nmap --accept-source-agreements --accept-package-agreements
echo VERIFIED
echo DONE
start "" "C:\Program Files\Wireshark\Wireshark.exe"
start "" "C:\Program Files\BurpSuiteCommunity\BurpSuiteCommunity.exe"
pause >nul