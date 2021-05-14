#!/bin/bash
rm -rf data.txt log.txt
curl -s --ipv4 --resolve service.udpfile.com:443:$resolveip --retry 3 "https://service.udpfile.com?asn="$asn"&city="$city"" -o data.txt >> /dev/null
domain=$(cat data.txt | grep domain= | cut -f 2- -d'=')
file=$(cat data.txt | grep file= | cut -f 2- -d'=')
url=$(cat data.txt | grep url= | cut -f 2- -d'=')
echo "请输入你要检测的CloudFlare IP"
read ip
curl --resolve $domain:443:$ip https://$domain/$file -o /dev/null --connect-timeout 5 --max-time 10
rm -rf data.txt log.txt
