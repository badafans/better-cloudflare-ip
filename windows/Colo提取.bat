chcp 936
cls
@echo off
cd "%~dp0"
color A
RD /S /Q temp
mkdir temp
cls
setlocal enabledelayedexpansion
set /a task=20
set /p task=���õ���curl��������(Ĭ��!task!):
set /a startH=%time:~0,2%
if %time:~3,1% EQU 0 (set /a startM=%time:~4,1%) else (set /a startM=%time:~3,2%)
if %time:~6,1% EQU 0 (set /a startS=%time:~7,1%) else (set /a startS=%time:~6,2%)
set /a n=1
set /a m=1
for /f "skip=7" %%i in ('curl https://update.freecdn.workers.dev -#') do (
set /a randomip=!random!%%256
echo url = "http://%%i!randomip!/cdn-cgi/trace">>temp/!m!.conf
set /a n+=1
if !n! GTR !task! (set /a n=1&start /b curl -s --config temp/!m!.conf --connect-timeout 5 --max-time 15>temp/!m!.txt&set /a m+=1) else (echo %%i!randomip!)
)
start /b curl -s --config temp/!m!.conf --connect-timeout 5 --max-time 15>temp/!m!.txt
echo.
echo �ȴ�curl���̽���
:loop1
choice /t 5 /d y /n >nul
for /f "delims=" %%i in ('tasklist ^| find /c /i "curl.exe"') do (
if %%i EQU 0 (echo %time% ��ǰcurl����%%i��) else (echo %time% ��ǰcurl����%%i��&goto loop1)
)
cd temp
echo.
echo ������ȡcolo�����Ե�...
set /a n=1
:loop2
if !n! EQU !m! (findstr "h= colo=" !n!.txt>>colo.txt&del !n!.txt !n!.conf) else (findstr "h= colo=" !n!.txt>>colo.txt&del !n!.txt !n!.conf&set /a n+=1&goto loop2)
for /f "delims=" %%i in (colo.txt) do (
set str=cloudflare%%i
if "!str:cloudflareh=!" NEQ "!str!" (set ip=%%i)
if "!str:cloudflarecolo=!" NEQ "!str!" (set colo=%%i&echo !ip!,!colo!>>temp.txt)
)
echo.
echo ����ɾ����Ч�ַ��������Ե�...
for /f "tokens=2,3 delims==" %%i in (temp.txt) do (
set str=%%i
set str=!str:colo=!
echo !str!%%j>>temp.csv
)
echo.
echo ��������colo.csv�����Ե�...
echo Address,Colocation>../colo.csv
for /f "tokens=1,2,3,4 delims=." %%i in (temp.csv) do (
echo %%i.%%j.%%k.,%%l>>colo.csv
)
for /f "tokens=1,3 delims=," %%i in (colo.csv) do (
echo %%i,%%j>>../colo.csv
)
cd ..
RD /S /Q temp
set /a stopH=%time:~0,2%
if %time:~3,1% EQU 0 (set /a stopM=%time:~4,1%) else (set /a stopM=%time:~3,2%)
if %time:~6,1% EQU 0 (set /a stopS=%time:~7,1%) else (set /a stopS=%time:~6,2%)
set /a starttime=%startH%*3600+%startM%*60+%startS%
set /a stoptime=%stopH%*3600+%stopM%*60+%stopS%
if %starttime% GTR %stoptime% (set /a alltime=86400-%starttime%+%stoptime%) else (set /a alltime=%stoptime%-%starttime%)
echo.
echo colo.csv�Ѿ����ɣ��ܼ���ʱ %alltime% ��
echo.
echo ��������ر�
pause>nul