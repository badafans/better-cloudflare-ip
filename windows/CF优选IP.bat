chcp 936
cls
@echo off
cd "%~dp0"
color A
setlocal enabledelayedexpansion
set /p Bandwidth=������������ CloudFlare �������Ĵ����С(��λ Mbps):
set /a Speed=%Bandwidth%*128
set /a startH=%time:~0,2%
if %time:~3,1% EQU 0 (set /a startM=%time:~4,1%) else (set /a startM=%time:~3,2%)
if %time:~6,1% EQU 0 (set /a startS=%time:~7,1%) else (set /a startS=%time:~6,2%)
goto start
:start
title ��ȡCF�ڵ�IP
del data.txt ip.txt CR.txt CRLF.txt cut.txt speed.txt
RD /S /Q temp
cls
curl --ipv4 https://service.freecdn.workers.dev -o data.txt -#
for /f "delims=" %%a in ('findstr /C:"publicip" data.txt') do (
set publicip=%%a
set publicip=!publicip:publicip:=!
)
for /f "delims=" %%a in ('findstr /C:"domain" data.txt') do (
set domain=%%a
set domain=!domain:domain:=!
)
for /f "delims=" %%a in ('findstr /C:"file" data.txt') do (
set file=%%a
set file=!file:file:=!
)
for /f "delims=" %%a in ('findstr /C:"url" data.txt') do (
set url=%%a
set url=!url:url:=!
)
for /f "delims=" %%a in ('findstr /C:"version" data.txt') do (
set version=%%a
set version=!version:version:=!
if !version! NEQ 20201108 (echo �����°汾: !version! & echo ���µ�ַ: !url! & title ���º�ſ���ʹ�� & echo ��������˳����� & pause>nul & exit)
)
set /a i=%random%%%5
set /a n=0
for /f "skip=5" %%a in (data.txt) do (
if !n! EQU !i! (echo %%a>>ip.txt & set /a i+=4) else (set /a n+=1)
)
del data.txt
for /f "tokens=2 delims=:" %%a in ('find /c /v "" ip.txt') do (
set /a count=%%a
set /a count=count/30+1
)
title ���� ICMP ������
fping -f ip.txt -c %count% --interval=1 -s > ping.csv
findstr "%%" ping.csv > temp.csv
del ping.csv
del ip.txt
sort /+17 temp.csv /o ping.csv
del temp.csv
del sort.txt
cls
set /a a=0
for /f "delims=" %%a in (ping.csv) do (
set s=%%a
set s=!s:~0,15!
set /a a=a+1
title ��ȡ���Ժ��IP��ַ----���ڴ���� !a! ��
echo !s%!>>sort.txt
)
del ping.csv
cls
set count=0
for /f "tokens=1,2" %%a in ('type "sort.txt"') do (
echo %%a >> ip.txt
title ѡȡ30�����������ٵ�IP��ַ���ز���
set /a count+=1
if !count! equ 30 goto speedtest
)
:speedtest
del sort.txt
mkdir temp
cls
for /f "tokens=1,2" %%a in ('type "ip.txt"') do (
start /b curl --resolve !domain!:443:%%a https://!domain!/!file! -o temp/%%a -s --connect-timeout 2 --max-time 10
echo %%a ��������
)
del ip.txt
chcp 936
cls
echo �ȴ����ٽ��̽���,ɸѡ��������ѡ��IP
timeout /T 15 /NOBREAK
cd temp
dir /o:-s /b > ../ip.txt
cd ..
set /a n=0
for /f "delims=" %%a in (ip.txt) do (
set /a n+=1 & if !n!==1 set "a=%%a")
set /a n=0
for /f "delims=" %%a in (ip.txt) do (
set /a n+=1 & if !n!==2 set "b=%%a")
set /a n=0
for /f "delims=" %%a in (ip.txt) do (
set /a n+=1 & if !n!==3 set "c=%%a")
for /f "delims=" %%a in ('dir temp /b /a-d^| find /v /c "&#@"') do (
		if %%a GEQ 3 (
		chcp 936
		) else (
		goto start
		)
	)
title ��ѡ��IP��ַΪ (!a!)-(!b!)-(!c!)
goto one
:one
chcp 936
del CRLF.txt cut.txt speed.txt
cls
echo ��һ�β��� !a!
curl --resolve !domain!:443:!a! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt
for /f "delims=" %%a in (CRLF.txt) do (
set s=%%a
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%a in ('findstr /v "k M" cut.txt') do (
set x=%%a
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "k" cut.txt') do (
set x=%%a
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "M" cut.txt') do (
set x=%%a
set x=!x:~0,2!
set y=%%a
set y=!y:~3,1!
set /a x=!x%!*1024
set /a x=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a Max=0
for /f "tokens=1,2" %%a in ('type "speed.txt"') do (
if %%a GEQ !Max! set /a Max=%%a
)
if !Max! GEQ !Speed! (cls & echo ��ѡIP !a! ���� %Bandwidth% Mbps�������� & echo ��ֵ�ٶ� !Max! kB/s & goto end) else (goto two)
:two
chcp 936
del CRLF.txt cut.txt speed.txt
cls
echo ��һ�β��� !a! �������������,��ֵ�ٶ� !Max! kB/s
echo �ڶ��β��� !a!
curl --resolve !domain!:443:!a! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt
for /f "delims=" %%a in (CRLF.txt) do (
set s=%%a
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%a in ('findstr /v "k M" cut.txt') do (
set x=%%a
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "k" cut.txt') do (
set x=%%a
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "M" cut.txt') do (
set x=%%a
set x=!x:~0,2!
set y=%%a
set y=!y:~3,1!
set /a x=!x%!*1024
set /a y=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a Max=0
for /f "tokens=1,2" %%a in ('type "speed.txt"') do (
if %%a GEQ !Max! set /a Max=%%a
)
if !Max! GEQ !Speed! (cls & echo ��ѡIP !a! ���� %Bandwidth% Mbps�������� & echo ��ֵ�ٶ� !Max! kB/s & goto end) else (goto three)
:three
chcp 936
del CRLF.txt cut.txt speed.txt
cls
echo �ڶ��β��� !a! �������������,��ֵ�ٶ� !Max! kB/s
echo ��һ�β��� !b!
curl --resolve !domain!:443:!b! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt
for /f "delims=" %%a in (CRLF.txt) do (
set s=%%a
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%a in ('findstr /v "k M" cut.txt') do (
set x=%%a
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "k" cut.txt') do (
set x=%%a
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "M" cut.txt') do (
set x=%%a
set x=!x:~0,2!
set y=%%a
set y=!y:~3,1!
set /a x=!x%!*1024
set /a y=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a Max=0
for /f "tokens=1,2" %%a in ('type "speed.txt"') do (
if %%a GEQ !Max! set /a Max=%%a
)
if !Max! GEQ !Speed! (cls & echo ��ѡIP !b! ���� %Bandwidth% Mbps�������� & echo ��ֵ�ٶ� !Max! kB/s & goto end) else (goto four)
:four
chcp 936
del CRLF.txt cut.txt speed.txt
cls
echo ��һ�β��� !b! �������������,��ֵ�ٶ� !Max! kB/s
echo �ڶ��β��� !b!
curl --resolve !domain!:443:!b! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt
for /f "delims=" %%a in (CRLF.txt) do (
set s=%%a
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%a in ('findstr /v "k M" cut.txt') do (
set x=%%a
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "k" cut.txt') do (
set x=%%a
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "M" cut.txt') do (
set x=%%a
set x=!x:~0,2!
set y=%%a
set y=!y:~3,1!
set /a x=!x%!*1024
set /a y=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a Max=0
for /f "tokens=1,2" %%a in ('type "speed.txt"') do (
if %%a GEQ !Max! set /a Max=%%a
)
if !Max! GEQ !Speed! (cls & echo ��ѡIP !b! ���� %Bandwidth% Mbps�������� & echo ��ֵ�ٶ� !Max! kB/s & goto end) else (goto five)
:five
chcp 936
del CRLF.txt cut.txt speed.txt
cls
echo �ڶ��β��� !b! �������������,��ֵ�ٶ� !Max! kB/s
echo ��һ�β��� !c!
curl --resolve !domain!:443:!c! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt
for /f "delims=" %%a in (CRLF.txt) do (
set s=%%a
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%a in ('findstr /v "k M" cut.txt') do (
set x=%%a
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "k" cut.txt') do (
set x=%%a
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "M" cut.txt') do (
set x=%%a
set x=!x:~0,2!
set y=%%a
set y=!y:~3,1!
set /a x=!x%!*1024
set /a y=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a Max=0
for /f "tokens=1,2" %%a in ('type "speed.txt"') do (
if %%a GEQ !Max! set /a Max=%%a
)
if !Max! GEQ !Speed! (cls & echo ��ѡIP !c! ���� %Bandwidth% Mbps�������� & echo ��ֵ�ٶ� !Max! kB/s & goto end) else (goto six)
:six
chcp 936
del CRLF.txt cut.txt speed.txt
cls
echo ��һ�β��� !c! �������������,��ֵ�ٶ� !Max! kB/s
echo �ڶ��β��� !c!
curl --resolve !domain!:443:!c! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt
for /f "delims=" %%a in (CRLF.txt) do (
set s=%%a
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%a in ('findstr /v "k M" cut.txt') do (
set x=%%a
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "k" cut.txt') do (
set x=%%a
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%a in ('findstr "M" cut.txt') do (
set x=%%a
set x=!x:~0,2!
set y=%%a
set y=!y:~3,1!
set /a x=!x%!*1024
set /a y=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a Max=0
for /f "tokens=1,2" %%a in ('type "speed.txt"') do (
if %%a GEQ !Max! set /a Max=%%a
)
if !Max! GEQ !Speed! (cls & echo ��ѡIP !c! ���� %Bandwidth% Mbps�������� & echo ��ֵ�ٶ� !Max! kB/s & goto end) else (goto start)
:end
set /a stopH=%time:~0,2%
if %time:~3,1% EQU 0 (set /a stopM=%time:~4,1%) else (set /a stopM=%time:~3,2%)
if %time:~6,1% EQU 0 (set /a stopS=%time:~7,1%) else (set /a stopS=%time:~6,2%)
set /a starttime=%startH%*3600+%startM%*60+%startS%
set /a stoptime=%stopH%*3600+%stopM%*60+%stopS%
if %starttime% GTR %stoptime% (set /a alltime=86400-%starttime%+%stoptime%) else (set /a alltime=%stoptime%-%starttime%)
echo ����IP !publicip! �ܼ���ʱ %alltime% ��
del ip.txt CR.txt CRLF.txt cut.txt speed.txt temp.txt
RD /S /Q temp
echo ��������ر�
pause>nul