chcp 936
@echo off
cd %~dp0
color A
setlocal enabledelayedexpansion
cls
set /p a=��������ѡ IP :
curl --ipv4 --resolve update.freecdn.workers.dev:443:%a% https://update.freecdn.workers.dev -o temp.txt -#
for /f "tokens=2 delims==" %%a in ('findstr /C:"domain" temp.txt') do (
set domain=%%a
)
for /f "tokens=2 delims==" %%a in ('findstr /C:"file" temp.txt') do (
set file=%%a
)
del temp.txt
title  ���ڲ��� %a%
curl --resolve !domain!:443:%a% https://!domain!/!file! -o nul
pause
