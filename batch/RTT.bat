@echo off
setlocal enabledelayedexpansion
cd "%~dp0"
goto cloudflare
:rtt
if !a! LEQ 5 (
curl --resolve www.cloudflare.com:443:%1 https://www.cloudflare.com/cdn-cgi/trace -o nul -s --connect-timeout 1 -w "%1"_%%{time_connect}_"HTTP"%%{http_code}"\n">>rtt/!c!-!b!.log
set /a a=a+1
goto rtt
) else (
call :getrtt
set /a a=1
set /a b=b+1
)
goto :eof

:getrtt
for /f "delims=" %%i in ('findstr "HTTP200" rtt\!c!-!b!.log^| find /c /v ""') do (
set /a getrtt=%%i
if !getrtt! NEQ 0 (
call :getms
) else (
del rtt\!c!-!b!.log
)
)
goto :eof

:getms
set /a avgms=0
for /f "tokens=1,2 delims=_" %%i in ('findstr "HTTP200" rtt\!c!-!b!.log') do (
set ip=%%i
set ms=%%j
set ms=!ms:0.00=!
set ms=!ms:0.0=!
set ms=!ms:0.=!
set /a ms=!ms!
set /a ms=ms/1000
set /a avgms=avgms+ms
)
set /a avgms=avgms/getrtt
set /a getrtt=5-getrtt
if !avgms! LSS 10 (
echo !getrtt! 00!avgms! !ip!>rtt/!c!-!b!.log
) else (
if !avgms! LSS 100 (
echo !getrtt! 0!avgms! !ip!>rtt/!c!-!b!.log
) else (
echo !getrtt! !avgms! !ip!>rtt/!c!-!b!.log
)
)
goto :eof

:cloudflare
set /a a=1
set /a b=1
set /a c=%1
for /f "delims=" %%i in (rtt/!c!.txt) do (
call :rtt %%i
)
del rtt\!c!.txt
exit