#!/bin/bash
# random cloudflare anycast ip
declare -i bandwidth
declare -i speed
read -p "请设置期望到 CloudFlare 服务器的带宽大小(单位 Mbps):" bandwidth
speed=bandwidth*128*1024
starttime=`date +'%Y-%m-%d %H:%M:%S'`
while true
do
	while true
	do
		declare -i m
		declare -i n
		declare -i per
		rm -rf icmp temp data.txt meta.txt log.txt anycast.txt temp.txt
		mkdir icmp
		while true
		do
			if [ -f "resolve.txt" ]
			then
				echo 指向解析获取CF节点IP
				resolveip=$(cat resolve.txt)
				while true
				do
					if [ ! -f "meta.txt" ]
					then
						curl --ipv4 --resolve speed.cloudflare.com:443:$resolveip --retry 3 -v https://speed.cloudflare.com/__down>meta.txt 2>&1
					else
						asn=$(cat meta.txt | grep cf-meta-asn: | tr '\r' '\n' | awk '{print $3}')
						city=$(cat meta.txt | grep cf-meta-city: | tr '\r' '\n' | awk '{print $3}')
						latitude=$(cat meta.txt | grep cf-meta-latitude: | tr '\r' '\n' | awk '{print $3}')
						longitude=$(cat meta.txt | grep cf-meta-longitude: | tr '\r' '\n' | awk '{print $3}')
						curl --ipv4 --resolve service.udpfile.com:443:$resolveip --retry 3 "https://service.udpfile.com?asn="$asn"&city="$city"" -o data.txt -#
						break
					fi
				done
			else
				echo DNS解析获取CF节点IP
				while true
				do
					if [ ! -f "meta.txt" ]
					then
						curl --ipv4 --retry 3 -v https://speed.cloudflare.com/__down>meta.txt 2>&1
					else
						asn=$(cat meta.txt | grep cf-meta-asn: | tr '\r' '\n' | awk '{print $3}')
						city=$(cat meta.txt | grep cf-meta-city: | tr '\r' '\n' | awk '{print $3}')
						latitude=$(cat meta.txt | grep cf-meta-latitude: | tr '\r' '\n' | awk '{print $3}')
						longitude=$(cat meta.txt | grep cf-meta-longitude: | tr '\r' '\n' | awk '{print $3}')
						curl --ipv4 --retry 3 "https://service.udpfile.com?asn="$asn"&city="$city"" -o data.txt -#
						break
					fi
				done
			fi
			if [ -f "data.txt" ]
			then
				break
			fi
		done
		domain=$(cat data.txt | grep domain= | cut -f 2- -d'=')
		file=$(cat data.txt | grep file= | cut -f 2- -d'=')
		url=$(cat data.txt | grep url= | cut -f 2- -d'=')
		app=$(cat data.txt | grep app= | cut -f 2- -d'=')
		if [ "$app" != "20210315" ]
		then
			echo 发现新版本程序: $app
			echo 更新地址: $url
			echo 更新后才可以使用
			exit
		fi
		for i in `cat data.txt | sed '1,4d'`
		do
			echo $i>>anycast.txt
		done
		rm -rf meta.txt data.txt
		n=0
		m=$(cat anycast.txt | wc -l)
		for i in `cat anycast.txt`
		do
			ping -c 20 -i 1 -n -q $i > icmp/$n.log&
			n=$[$n+1]
			per=$n*100/$m
			while true
			do
				p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
				if [ $p -ge 100 ]
				then
					echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
					sleep 1
				else
					echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
					break
				fi
			done
		done
		rm -rf anycast.txt
		while true
		do
			p=$(ps | grep ping | grep -v "grep" | wc -l)
			if [ $p -ne 0 ]
			then
				echo 等待 ICMP 进程结束:剩余进程数 $p
				sleep 1
			else
				echo ICMP 丢包率测试完成
				break
			fi
		done
		cat icmp/*.log | grep 'statistics\|loss\|avg' | sed 'N;N;s/\n/ /g' | awk -F, '{print $1,$3}' | awk '{print $2,$9,$15}' | awk -F% '{print $1,$2}' | awk -F/ '{print $1,$2}' | awk '{print $2,$4,$1}' | sort -n | awk '{print $3}' | sed '21,$d' > ip.txt
		rm -rf icmp
		echo 选取20个丢包率最少的IP地址下载测速
		mkdir temp
		for i in `cat ip.txt`
		do
			echo $i 启动测速
			curl --resolve $domain:443:$i https://$domain/$file -o temp/$i -s --connect-timeout 2 --max-time 10&
		done
		echo 等待测速进程结束,筛选出三个优选的IP
		sleep 15
		echo 测速完成
		ls -S temp > ip.txt
		rm -rf temp
		n=$(wc -l ip.txt | awk '{print $1}')
		if [ $n -ge 3 ]; then
			first=$(sed -n '1p' ip.txt)
			second=$(sed -n '2p' ip.txt)
			third=$(sed -n '3p' ip.txt)
			rm -rf ip.txt
			echo 优选的IP地址为 $first - $second - $third
			echo 第一次测试 $first
			curl --resolve $domain:443:$first https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			declare -i max1
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$first
				break
			fi
			max=$[$max/1024]
			max1=max
			echo 峰值速度 $max kB/s
			echo 第二次测试 $first
			curl --resolve $domain:443:$first https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			declare -i max2
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$first
				break
			fi
			max=$[$max/1024]
			max2=max
			echo 峰值速度 $max kB/s
			if [ $max1 -ge $max2 ]
			then
				curl --ipv4 --resolve service.udpfile.com:443:$first --retry 3 -s -X POST -d ''20210315-$first-$max1'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o /dev/null --connect-timeout 5 --max-time 10
			else
				curl --ipv4 --resolve service.udpfile.com:443:$first --retry 3 -s -X POST -d ''20210315-$first-$max2'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o /dev/null --connect-timeout 5 --max-time 10
			fi
			echo 第一次测试 $second
			curl --resolve $domain:443:$second https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			declare -i max1
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$second
				break
			fi
			max=$[$max/1024]
			max1=max
			echo 峰值速度 $max kB/s
			echo 第二次测试 $second
			curl --resolve $domain:443:$second https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			declare -i max2
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$second
				break
			fi
			max=$[$max/1024]
			max2=max
			echo 峰值速度 $max kB/s
			if [ $max1 -ge $max2 ]
			then
				curl --ipv4 --resolve service.udpfile.com:443:$second --retry 3 -s -X POST -d ''20210315-$second-$max1'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o /dev/null --connect-timeout 5 --max-time 10
			else
				curl --ipv4 --resolve service.udpfile.com:443:$second --retry 3 -s -X POST -d ''20210315-$second-$max2'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o /dev/null --connect-timeout 5 --max-time 10
			fi
			echo 第一次测试 $third
			curl --resolve $domain:443:$third https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			declare -i max1
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$third
				break
			fi
			max=$[$max/1024]
			max1=max
			echo 峰值速度 $max kB/s
			echo 第二次测试 $third
			curl --resolve $domain:443:$third https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			declare -i max2
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$third
				break
			fi
			max=$[$max/1024]
			max2=max
			echo 峰值速度 $max kB/s
			if [ $max1 -ge $max2 ]
			then
				curl --ipv4 --resolve service.udpfile.com:443:$third --retry 3 -s -X POST -d ''20210315-$third-$max1'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o /dev/null --connect-timeout 5 --max-time 10
			else
				curl --ipv4 --resolve service.udpfile.com:443:$third --retry 3 -s -X POST -d ''20210315-$third-$max2'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o /dev/null --connect-timeout 5 --max-time 10
			fi
		fi
	done
		break
done
	max=$[$max/1024]
	declare -i realbandwidth
	realbandwidth=max/128
	endtime=`date +'%Y-%m-%d %H:%M:%S'`
	start_seconds=$(date --date="$starttime" +%s)
	end_seconds=$(date --date="$endtime" +%s)
	clear
	curl --ipv4 --resolve service.udpfile.com:443:$anycast --retry 3 -s -X POST -d ''20210315-$anycast-$max'' "https://service.udpfile.com?asn="$asn"&city="$city"" -o temp.txt
	publicip=$(cat temp.txt | grep publicip= | cut -f 2- -d'=')
	colo=$(cat temp.txt | grep colo= | cut -f 2- -d'=')
	rm -rf temp.txt
	echo $anycast>resolve.txt
	echo 优选IP $anycast 满足 $bandwidth Mbps带宽需求
	echo 公网IP $publicip
	echo 自治域 AS$asn
	echo 经纬度 $longitude,$latitude
	echo META城市 $city
	echo 实测带宽 $realbandwidth Mbps
	echo 峰值速度 $max kB/s
	echo 数据中心 $colo
	echo 总计用时 $((end_seconds-start_seconds)) 秒