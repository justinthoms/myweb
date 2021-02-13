@echo off
title WiFi Password Viewer

:start

cls
echo.
echo    WiFi Password Viewer 
echo --------------------------------
echo Author :  JUSTIN
echo --------------------------------
echo.
echo 1 - Run as Administrator  [91m(Recommended) [0m
echo 2 - View all saved WiFi profiles
echo 3 - View password for selected SSID
echo.
set /p num="Enter Number: "
if %num%==1 goto admin
if %num%==2 goto show
if %num%==3 goto getpass
goto start

:show
cls
echo.
echo    WiFi Password Viewer 
echo --------------------------------
echo Author :  JUSTIN
echo --------------------------------
echo.
netsh wlan show profiles
pause>nul
goto start

:getpass
cls
echo.
echo    WiFi Password Viewer 
echo --------------------------------
echo Author :  JUSTIN
echo --------------------------------
echo.
set /p ssid="Enter SSID Name: "
cls
echo.
echo    WiFi Password Viewer 
echo --------------------------------
echo Author :  JUSTIN
echo --------------------------------
echo.
echo.
echo SSID Name:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4 "name"
echo.
echo Security mode:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4  "Authentication"
echo.
echo WiFi Password:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4 "Key"
echo.
echo  [41m*If results empty, Please run this program as Administrator and/or check your entered SSID name. [0m
pause>nul
goto start

:admin
Powershell -Command "& { Start-Process \"%~n0%~x0\" -verb RunAs}"

:end