@echo off

set DNS1=103.85.204.222
set DNS2=1.1.1.1
set INTERFACE=Ethernet

netsh int ipv4 set dns name="%INTERFACE%" static %DNS1% primary validate=no
netsh int ipv4 add dns name="%INTERFACE%" %DNS2% index=2

ipconfig /flushdns

pause
