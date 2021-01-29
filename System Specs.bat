@echo off
echo Checking system information...

:: Section 1: Windows 10 information
echo=============================
echo WINDOWS INFO
echo=============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"

:: Section 2: Hardware information
echo=============================
echo HARDWARE INFO
echo=============================
systeminfo | findstr /c:"Total Physical Memory"
echo -
echo Motherboard:
wmic baseboard get manufacturer, name, partnumber, serialnumber
echo -
echo CPU:
wmic cpu get name
echo -
echo Drives:
wmic diskdrive get name,model,size
echo -
echo Video Card:
wmic path win32_videocontroller get name

:: Section 3: Networking information
echo=============================
echo NETWORK INFO
echo=============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6

echo=============================
pause