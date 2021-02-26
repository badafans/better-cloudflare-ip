chcp 936
@echo off
cd %~dp0
color A
setlocal enabledelayedexpansion
cls
set /p a=请输入优选 IP :
curl --ipv4 --resolve update.udpfile.com:443:%a% https://update.udpfile.com -o temp.txt -#
for /f "tokens=2 delims==" %%a in ('findstr /C:"domain" temp.txt') do (
set domain=%%a
)
for /f "tokens=2 delims==" %%a in ('findstr /C:"file" temp.txt') do (
set file=%%a
)
del temp.txt
title  正在测试 %a%
curl --resolve !domain!:443:%a% https://!domain!/!file! -o nul
pause
