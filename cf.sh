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
		declare -i n
		declare -i per
		rm -rf icmp temp log.txt
		mkdir icmp
		n=0
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 1.0.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 1.1.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.17.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.18.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.19.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.20.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.22.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.24.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.25.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.26.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.40.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.41.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.42.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.43.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.44.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.45.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.10.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.13.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.14.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.15.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.16.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.17.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.18.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.19.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.2.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.20.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.21.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.22.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.23.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.24.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.25.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.26.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.27.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.28.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.29.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.3.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.30.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.31.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.4.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.5.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.6.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.7.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.8.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.9.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 141.101.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.224.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.225.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.226.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.227.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.228.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.229.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.230.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.231.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.232.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.233.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.234.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.235.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.236.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.237.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.238.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.239.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.240.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.241.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.242.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.243.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.248.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.249.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.250.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.251.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.252.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.253.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.254.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.255.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 162.159.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.100.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.101.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.102.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.103.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.126.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.127.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.128.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.129.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.130.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.131.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.132.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.133.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.134.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.135.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.136.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.137.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.138.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.139.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.140.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.141.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.142.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.143.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.144.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.145.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.146.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.147.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.148.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.149.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.150.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.151.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.152.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.153.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.154.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.155.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.156.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.157.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.158.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.159.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.160.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.161.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.162.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.163.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.164.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.165.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.166.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.167.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.168.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.169.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.170.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.171.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.172.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.173.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.174.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.175.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.176.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.177.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.178.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.179.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.180.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.181.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.182.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.183.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.184.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.185.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.186.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.187.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.188.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.189.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.190.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.191.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.192.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.193.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.194.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.195.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.196.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.197.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.198.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.199.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.200.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.201.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.202.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.203.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.204.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.205.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.206.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.207.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.210.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.216.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.217.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.218.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.219.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.32.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.33.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.34.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.35.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.36.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.37.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.38.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.39.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.46.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.47.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.48.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.50.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.51.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.52.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.53.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.54.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.55.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.56.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.57.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.58.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.59.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.60.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.61.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.62.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.63.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.64.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.65.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.66.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.67.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.68.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.69.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.70.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.71.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.72.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.73.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.74.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.75.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.76.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.77.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.78.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.79.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.80.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.81.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.82.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.83.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.84.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.85.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.86.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.87.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.88.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.89.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.90.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.91.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.92.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.93.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.94.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.95.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.96.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.97.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.98.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.99.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 173.245.49.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 190.93.244.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 190.93.245.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 190.93.246.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 190.93.247.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.208.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.209.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.211.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.212.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.213.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.214.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.215.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.220.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.221.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.222.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 198.41.223.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p == 0 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				echo ICMP 丢包率测试完成
				break
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			fi
		done
		cat icmp/*.log | sed -n '3~5p;4~5p' | sed -n '{N;s/\n/\t/p}' | cut -f1 -d'%' | awk '{print $2,$NF}' | sort -k 2 -n | awk '{print $1}' | sed '101,$d' > ip.txt
		rm -rf icmp
		echo 选取100个丢包率最少的IP地址下载测速
		mkdir temp
		for i in `cat ip.txt`
		do
			echo $i 启动测速
			curl --resolve speed.cloudflare.com:443:$i https://speed.cloudflare.com/__down?bytes=1000000000 -o temp/$i -s --connect-timeout 2 --max-time 10&
			sleep 0.5
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
			curl --resolve speed.cloudflare.com:443:$first https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
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
			echo 峰值速度 $max kB/s
			echo 第二次测试 $first
			curl --resolve speed.cloudflare.com:443:$first https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
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
			echo 峰值速度 $max kB/s
			echo 第一次测试 $second
			curl --resolve speed.cloudflare.com:443:$second https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
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
			echo 峰值速度 $max kB/s
			echo 第二次测试 $second
			curl --resolve speed.cloudflare.com:443:$second https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
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
			echo 峰值速度 $max kB/s
			echo 第一次测试 $third
			curl --resolve speed.cloudflare.com:443:$third https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
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
			echo 峰值速度 $max kB/s
			echo 第二次测试 $third
			curl --resolve speed.cloudflare.com:443:$third https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
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
			echo 峰值速度 $max kB/s
		fi
	done
		break
done
	max=$[$max/1024]
	endtime=`date +'%Y-%m-%d %H:%M:%S'`
	start_seconds=$(date --date="$starttime" +%s)
	end_seconds=$(date --date="$endtime" +%s)
	clear
	echo $anycast 满足 $bandwidth Mbps带宽需求,峰值速度 $max kB/s,总计用时 $((end_seconds-start_seconds)) 秒