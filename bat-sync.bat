@echo off

:start
cls
set port=
set _IPAddress=
cls

FOR /F "delims=: tokens=2" %%a in ('ipconfig ^| find "IPv4"') do set _IPAddress=%%a

SET/P port=Enter port or url for localhost... (example: ":5555" or "/hello":
echo Initiating Browser sync for localhost%port%... Please wait
echo External URL is copied to your clipboard! :D
echo %_IPAddress%:3000| clip
browser-sync start --proxy localhost%port%
