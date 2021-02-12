@echo off
title Network Tracer
Set /p Host= Please Enter Hostname or IP Address: 
if defined Host (
   powershell -Command tracert -d %Host% >trace%Host%.txt
)