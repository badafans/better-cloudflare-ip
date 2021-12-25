chcp 936>nul
@echo off
cd "%~dp0"
color A
setlocal enabledelayedexpansion
set version=20211226

:main
cls
title CF优选IP
echo 1. IPV4优选&echo 2. IPV6优选&echo 3. 自定义IPV4段&echo 4. 单IP测速&echo 5. 清空缓存&echo 0. 退出&echo.
set /p menu=请选择菜单:
if %menu%==0 exit
if %menu%==1 title IPV4优选&set ips=ipv4&set /a selfmode=0&goto bettercloudflareip
if %menu%==2 title IPV6优选&set ips=ipv6&set /a selfmode=0&goto bettercloudflareip
if %menu%==3 title 自定义IPV4段&set ips=ipv4&set /a selfmode=1&set /p selfip=请输入C类自定义IPV4(格式 1.1.1):&goto bettercloudflareip
if %menu%==4 title 单IP测速&call :singletest
if %menu%==5 del ipv4.txt ipv6.txt data.txt ip.txt CR.txt CRLF.txt cut.txt speed.txt meta.txt>nul 2>&1&RD /S /Q rtt>nul 2>&1
goto main

:singletest
set /p ip=请输入需要测速的IP:
curl --ipv4 --resolve service.anycast.eu.org:443:!ip! https://service.anycast.eu.org -o temp.txt -#
for /f "tokens=2 delims==" %%i in ('findstr /C:"domain" temp.txt') do (
set domain=%%i
)
for /f "tokens=2 delims==" %%i in ('findstr /C:"file" temp.txt') do (
set file=%%i
)
del temp.txt
title  正在测速 !ip!
curl --resolve !domain!:443:!ip! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 15
goto :eof

:bettercloudflareip
set /a tasknum=25
set /a bandwidth=0
set /p bandwidth=请设置期望的带宽大小(默认%bandwidth%,单位 Mbps):
set /p tasknum=请设置RTT测试进程数(默认%tasknum%,最大50):
if %tasknum% EQU 0 (set /a tasknum=25&echo 进程数不能为0,自动设置为默认值)
if %tasknum% GTR 50 (set /a tasknum=50&echo 超过最大进程限制,自动设置为最大值)
set /a speed=bandwidth*128
set /a startH=%time:~0,2%
if %time:~3,1% EQU 0 (set /a startM=%time:~4,1%) else (set /a startM=%time:~3,2%)
if %time:~6,1% EQU 0 (set /a startS=%time:~7,1%) else (set /a startS=%time:~6,2%)
call :start
exit

:start
del data.txt ip.txt CR.txt CRLF.txt cut.txt speed.txt meta.txt>nul 2>&1
RD /S /Q rtt>nul 2>&1
set LF=^


if exist "!ips!.txt" goto resolve
if not exist "!ips!.txt" goto dnsresolve

:dnsresolve
echo DNS防污染解析
curl --!ips! -v --retry 3 -s https://speed.cloudflare.com/cdn-cgi/trace>data.txt 2>&1
for /f "tokens=2 delims=(" %%i in ('findstr Connected data.txt') do (
set resolveip=%%i
)
for /f "tokens=1 delims=)" %%i in ('echo !resolveip!') do (
set resolveip=%%i
)
goto resolve

:resolve
echo 指向解析获取CF节点IP
echo 如果长时间无法CF节点IP,重新运行程序并选择清空缓存
for %%i in ("!LF!") do (
	for /f "delims=" %%a in ('curl --!ips! --resolve speed.cloudflare.com:443:!resolveip! --retry 3 -s https://speed.cloudflare.com/meta') do (
	set str=%%a
	set str=!str:{=!
	set str=!str:}=!
	set str=!str:"=!
	echo !str:,=%%~i!
	)
)>meta.txt
for /f "tokens=2 delims=:" %%i in ('findstr "asn:" meta.txt') do (
	set asn=%%i
)
for /f "tokens=2 delims=:" %%i in ('findstr "city:" meta.txt') do (
	set city=%%i
)
for /f "tokens=2 delims=:" %%i in ('findstr "latitude:" meta.txt') do (
	set latitude=%%i
)
for /f "tokens=2 delims=:" %%i in ('findstr "longitude:" meta.txt') do (
	set longitude=%%i
)
curl --!ips! --resolve service.anycast.eu.org:443:!resolveip! --retry 3 https://service.anycast.eu.org -o data.txt -#
goto checkupdate

:checkupdate
for /f "tokens=2 delims==" %%i in ('findstr /C:"domain" data.txt') do (
set domain=%%i
)
for /f "tokens=2 delims==" %%i in ('findstr /C:"file" data.txt') do (
set file=%%i
)
for /f "tokens=2 delims==" %%i in ('findstr /C:"url" data.txt') do (
set url=%%i
)
for /f "tokens=2 delims==" %%i in ('findstr /C:"app" data.txt') do (
set app=%%i
if !app! NEQ !version! (echo 发现新版本程序: !app!&echo 更新地址: !url!&title 更新后才可以使用&echo 按任意键退出程序&pause>nul&exit)
)
if not exist "RTT.bat" echo 当前程序不完整&echo 请重新下载Release版本: !url! &pause>nul&exit
if not exist "CR2CRLF.exe" echo 当前程序不完整&echo 请重新下载Release版本: !url! &pause>nul&exit
if !selfmode!==0 (goto getip) else (set /a a=0&goto selfconfigip)

:getip
for /f "skip=4" %%i in (data.txt) do (
echo %%i>>ip.txt
)
goto rtt

:selfconfigip
if !a!==256 (goto rtt) else (echo !selfip!.!a!>>ip.txt&set /a a=a+1&goto selfconfigip)

:rtt
del meta.txt data.txt
mkdir rtt
for /f "tokens=2 delims=:" %%i in ('find /c /v "" ip.txt') do (
set /a ipnum=%%i
)
if !tasknum! GTR !ipnum! set /a tasknum=ipnum
set /a iplist=ipnum/tasknum
set /a a=1
set /a b=1
for /f "delims=" %%i in (ip.txt) do (
echo %%i>>rtt/!b!.txt
if !a! EQU !iplist! (set /a a=1&set /a b=b+1) else (set /a a=a+1)
)
del ip.txt
if !a! NEQ 1 set /a a=1&set /a b=b+1
title RTT测试中
goto rtttest

:rtttest
if !a! NEQ !b! (start /b RTT.bat !a!>nul&set /a a=a+1&goto rtttest) else (goto rttstatus)

:rttstatus
timeout /T 2 /NOBREAK>nul
for /f "delims=" %%i in ('dir rtt /o:-s /b^| findstr txt^| find /c /v ""') do (
set /a taskstatus=%%i
if !taskstatus! NEQ 0 (echo 等待RTT测试结束,剩余进程数 !taskstatus!&goto rttstatus) else (echo RTT测试完成)
)
copy rtt\*.log rtt\ip.txt>nul
sort rtt/ip.txt /O ip.txt
for /f "tokens=2 delims=:" %%i in ('find /c /v "" ip.txt') do (
if %%i LSS 5 (echo 当前所有IP都存在RTT丢包&set /a tasknum=10&goto start)
)
set /a a=0
for /f "tokens=2,3 delims= " %%i in (ip.txt) do (
set /a a=a+1
if !a!==1 echo 第1个IP %%j 往返延迟 %%i 毫秒
)
set /a a=0
for /f "tokens=2,3 delims= " %%i in (ip.txt) do (
set /a a=a+1
if !a!==2 echo 第2个IP %%j 往返延迟 %%i 毫秒
)
set /a a=0
for /f "tokens=2,3 delims= " %%i in (ip.txt) do (
set /a a=a+1
if !a!==3 echo 第3个IP %%j 往返延迟 %%i 毫秒
)
set /a a=0
for /f "tokens=2,3 delims= " %%i in (ip.txt) do (
set /a a=a+1
if !a!==4 echo 第4个IP %%j 往返延迟 %%i 毫秒
)
set /a a=0
for /f "tokens=2,3 delims= " %%i in (ip.txt) do (
set /a a=a+1
if !a!==5 echo 第5个IP %%j 往返延迟 %%i 毫秒
)
title 启动测速
set /a a=0
for /f "tokens=2,3 delims= " %%i in (ip.txt) do (
set /a a=a+1
if !a! GTR 5 echo 没有满足速度要求的IP&goto start
del CRLF.txt cut.txt speed.txt>nul 2>&1
set avgms=%%i
set anycast=%%j
echo 正在测试 !anycast!
curl --resolve !domain!:443:!anycast! https://!domain!/!file! -o nul --connect-timeout 5 --max-time 10 > CR.txt 2>&1
findstr "0:" CR.txt >> CRLF.txt
CR2CRLF CRLF.txt>nul
for /f "delims=" %%i in (CRLF.txt) do (
set s=%%i
set s=!s:~73,5!
echo !s%!>>cut.txt
)
for /f "delims=" %%i in ('findstr /v "k M" cut.txt') do (
set x=%%i
set x=!x:~0,5!
set /a x=!x%!/1024
echo !x! >> speed.txt
)
for /f "delims=" %%i in ('findstr "k" cut.txt') do (
set x=%%i
set x=!x:~0,4!
set /a x=!x%!
echo !x! >> speed.txt
)
for /f "delims=" %%i in ('findstr "M" cut.txt') do (
set x=%%i
set x=!x:~0,2!
set y=%%i
set y=!y:~3,1!
set /a x=!x%!*1024
set /a x=!y%!*1024/10
set /a z=x+y
echo !z! >> speed.txt
)
set /a max=0
for /f "tokens=1,2" %%i in ('type "speed.txt"') do (
if %%i GEQ !max! set /a max=%%i
)
echo !anycast! 峰值速度 !max! kB/s
if !max! GEQ !speed! cls&goto end
)

:end
set /a realbandwidth=max/128
set /a stopH=%time:~0,2%
if %time:~3,1% EQU 0 (set /a stopM=%time:~4,1%) else (set /a stopM=%time:~3,2%)
if %time:~6,1% EQU 0 (set /a stopS=%time:~7,1%) else (set /a stopS=%time:~6,2%)
set /a starttime=%startH%*3600+%startM%*60+%startS%
set /a stoptime=%stopH%*3600+%stopM%*60+%stopS%
if %starttime% GTR %stoptime% (set /a alltime=86400-%starttime%+%stoptime%) else (set /a alltime=%stoptime%-%starttime%)
curl --!ips! --resolve service.anycast.eu.org:443:!anycast! --retry 3 -s -X POST https://service.anycast.eu.org -o data.txt
for /f "tokens=2 delims==" %%i in ('findstr /C:"publicip" data.txt') do (
set publicip=%%i
)
for /f "tokens=2 delims==" %%i in ('findstr /C:"colo" data.txt') do (
set colo=%%i
)
echo 优选IP !anycast!
echo 公网IP !publicip!
echo 自治域 AS!asn!
echo 经纬度 !longitude!,!latitude!
echo META城市 !city!
echo 设置宽带 !bandwidth! Mbps
echo 实测带宽 !realbandwidth! Mbps
echo 峰值速度 !max! kB/s
echo 往返延迟 !avgms! 毫秒
echo 数据中心 !colo!
echo 总计用时 !alltime! 秒
echo !anycast!>!ips!.txt
echo !anycast!|clip
del data.txt ip.txt CR.txt CRLF.txt cut.txt speed.txt meta.txt>nul 2>&1
RD /S /Q rtt>nul 2>&1
title 优选IP已经自动复制到剪贴板
echo 按任意键关闭
pause>nul
goto :eof