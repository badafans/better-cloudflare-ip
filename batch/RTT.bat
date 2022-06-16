@echo off
setlocal enabledelayedexpansion
cd "%~dp0"
set /a m=%1
set /a n=1
set /a avgms=0
for /f "delims=" %%i in (rtt/!m!.txt) do (
call :rtt %%i
)
del rtt\!m!.txt
exit

:rtt
if !n! LEQ 3 (
for /f "tokens=1,2 delims=_" %%i in ('curl --resolve www.cloudflare.com:443:%1 https://www.cloudflare.com/cdn-cgi/trace -o nul -s --connect-timeout 1 --max-time 3 -w %%{time_connect}_%%{http_code}') do (
set ms=%%i
set ms=!ms:0.00=!
set ms=!ms:0.0=!
set ms=!ms:0.=!
set ms=!ms:1.=1!
set ms=!ms:2.=2!
set ms=!ms:3.=3!
set ms=!ms:4.=4!
set ms=!ms:5.=5!
set ms=!ms:6.=6!
set ms=!ms:7.=7!
set ms=!ms:8.=8!
set ms=!ms:9.=9!
set /a ms=!ms!
set /a ms=ms/1000
set /a avgms=avgms+ms
set /a rsp=%%j
)
if !rsp! EQU 200 (set /a n=n+1&goto rtt) else (set /a avgms=0&set /a n=1)
) else (
set /a avgms=avgms/3
if !avgms! LSS 10 (
echo 00!avgms! %1 >> rtt/!m!.log
) else (
if !avgms! LSS 100 (
echo 0!avgms! %1 >> rtt/!m!.log
) else (
echo !avgms! %1 >> rtt/!m!.log
)
)
set /a n=1
set /a avgms=0
)
goto :eof
