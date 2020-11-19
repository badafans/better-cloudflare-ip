chcp 936
@echo off
cd %~dp0
color A
setlocal enabledelayedexpansion
cls
curl --ipv4 https://service.freecdn.workers.dev -o data.txt -#
for /f "delims=" %%a in ('findstr /C:"domain" data.txt') do (
set domain=%%a
set domain=!domain:domain:=!
)
for /f "delims=" %%a in ('findstr /C:"file" data.txt') do (
set file=%%a
set file=!file:file:=!
)
del data.txt
set /p a=请输入优选 IP :
title  正在测试 %a%
curl --resolve !domain!:443:%a% https://!domain!/!file! -o nul
pause
