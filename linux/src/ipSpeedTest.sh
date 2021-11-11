#!/bin/bash
. /etc/profile

function main(){
    local test_ip="$1"
    local update_url='update.udpfile.com'
    local tmp_file="/tmp/ip_test.tmp"

    if [[  -z "$test_ip" ]]; then
        echo "Usage: $0 <ip>"
        exit 1
    # IP是否为IPV4
    elif [[ "$test_ip" != "${test_ip#*[0-9].[0-9]}" ]]; then
        :
    # IP是否为IPV6
    elif [[ "$test_ip" != "${test_ip#*:[0-9a-fA-F]}" ]]; then
        :
    else
        echo "Unrecognized IP format '${test_ip}'"
        exit 1
    fi

    curl -s -q --resolve ${update_url}:443:${test_ip} https://${update_url} -o ${tmp_file}

    [[ $? -ne 0 ]] && echo "获取测速信息失败" && exit 1

    local speedtest_url=$(awk -F= '/^domain/ {print $2}' ${tmp_file})
    local speedtest_file=$(awk -F= '/^file/ {print $2}' ${tmp_file})
    

    curl --resolve ${speedtest_url}:443:${test_ip} https://${speedtest_url}/${speedtest_file} -o /dev//null

}

main "$@"
