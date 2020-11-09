#!/usr/bin/env python
# encoding:utf-8

import json
import math
import os
import platform
import re
import shutil
import subprocess
import sys
import time
from multiprocessing import Manager, Pool

import requests

original_host = ['www.lyndi.tk', 'hidden-base-547e.jearol.workers.dev']


def main():
	cf_ips = get_cf_ips()
	ping_test_dict = {}
	ping_test_pool = {}
	print('测试 ICMP 丢包率\n')
	re_cmp = re.compile('(\d+\.\d+\.\d+\.\d+)[^\(]*\(\d+ avg, (\d+)\% loss\)', re.I)
	r = check_icmp(cf_ips)
	re_findall = re_cmp.findall(r)
	for i in re_findall:
		ping_test_dict[i[0]] = int(i[1])
	no_loss_ping = filter(lambda x: ping_test_dict[x] == 0, ping_test_dict)
	no_loss_ping = list(no_loss_ping)

	if len(no_loss_ping) > 0:
		print('测试完成，无丢包的 IP 总共有 {} 个，分别是：\n{}\n'.format(len(no_loss_ping), '\n'.join(no_loss_ping)))
		check_speed(no_loss_ping)
	else:
		print('\n测试完成，选择 10 个丢包最低的 IP 进行速度测试\n')
		ping_test_sorted = sorted(ping_test_dict.items(), key=lambda x: x[1])
		ping_test_cf_selected = [i[0] for i in ping_test_sorted[0:10]]
		print('选择的 10 个丢包最低的 IP 分别是：\n{}\n'.format('\n'.join(ping_test_cf_selected)))
		check_speed(ping_test_cf_selected)


def get_cf_ips():
	print('获取 CloudFlare 节点 IP 列表\n')
	ret = requests.get('https://service.freecdn.workers.dev', timeout=30)
	ret = ret.text.split('\n')
	return ret[5:]


def check_icmp(ip):
	re_cmp = re.compile('\(\d+ avg, (\d+)\% loss\)', re.I)
	fping_list = []
	page_size = 600
	pages = int(math.ceil(len(ip) * 1.0 / page_size))
	page_list = range(1, pages + 1)
	for i in page_list:
		list_start = (i - 1) * page_size
		list_end = i * page_size
		ip_file = os.path.abspath(os.path.join(os.getcwd(), 'ip-{}.txt'.format(i)))
		with open(ip_file, 'w') as f:
			f.write('\n'.join(ip[list_start:list_end]))
		cmd = 'fping -f {} -c 30 -i 1 -s 2>&1'.format(ip_file)
		p = subprocess.Popen(cmd, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, close_fds=False)
		fping_list.append(p)
	ping = ''
	while True:
		fping_end = []
		for p in fping_list:
			if p.poll() is None:
				r = p.stdout.readline()
				r = r.decode('utf-8')
				if re_cmp.findall(r):
					ping += r
					print(r.replace('\n', ''))
			else:
				fping_end.append(True)
		if len(fping_end) == len(fping_list) and list(set(fping_end)) == [True]:
			break
		time.sleep(0.01)
	for i in page_list:
		ip_file = os.path.abspath(os.path.join(os.getcwd(), 'ip-{}.txt'.format(i)))
		if os.path.exists(ip_file):
			os.remove(ip_file)
	return ping


def check_speed(ping_test_cf_selected):
	print('开始对选中的 IP 进行速度测试...\n')
	if os.path.exists(os.path.abspath(os.path.join(os.getcwd(), 'temp'))):
		shutil.rmtree(os.path.abspath(os.path.join(os.getcwd(), 'temp')))
	os.makedirs(os.path.abspath(os.path.join(os.getcwd(), 'temp')))

	for i in ping_test_cf_selected:
		print('开始对 {} 进行速度测试'.format(i))
		cmd = 'curl --resolve speed.cloudflare.com:443:{0} https://speed.cloudflare.com/__down?bytes=1000000000 -o temp/{0} -s --connect-timeout 2 --max-time 10'.format(
			i)
		p = subprocess.Popen(
			cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
		while p.poll() is None:
			time.sleep(0.1)

	print('\n测试完成，选择5个速度最快的 IP 进行源地址速度测试...\n')
	speed_test_ips_list = []
	file_size_dict = {}

	for root, dirs, files in os.walk('temp'):
		for i in files:
			file_size_dict[i] = os.path.getsize(os.path.join('temp', i))

	file_size_dict_sorted = sorted(
		file_size_dict.items(), key=lambda x: x[1], reverse=True)
	for i in range(5):
		speed_test_ips_list.append(file_size_dict_sorted[i][0])
	print('选择的 5 个速度最快的 IP 分别是：\n{}'.format('\n'.join(speed_test_ips_list)))
	for i in original_host:
		check_speed_original(speed_test_ips_list, i)


def check_speed_original(speed_test_ips_list, original_address):
	print('\n通过选中的 IP 开始对源地址 {} 进行速度测试...\n'.format(original_address))
	cf_speed_test_ips_dict = {}
	for i in speed_test_ips_list:
		print('开始对 {:15} 进行源地址速度测试'.format(i))
		if platform.system() == 'Windows':
			cmd = 'curl --resolve {1}:443:{0} https://{1}/test -o nul --connect-timeout 5 --max-time 15'.format(i, original_address)
		else:
			cmd = 'curl --resolve {1}:443:{0} https://{1}/test -o /dev/null --connect-timeout 5 --max-time 15'.format(i, original_address)
		p = subprocess.Popen(
			cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
		ret = ''
		while p.poll() is None:
			r = p.stdout.readline().decode('utf-8')
			if r:
				ret += r
			time.sleep(0.01)
		ret = ret.split('\n')
		ret = ret[2]
		ret = ret.split('\r')
		ret = ret[-2]
		while True:
			if '  ' in ret:
				ret = ret.replace('  ', ' ')
			else:
				break
		ret = ret.split(' ')
		ret = ret[7]
		if 'M' in ret:
			ret = '{}k'.format(float(ret.replace('M', '')) * 1024)
		if 'k' in ret:
			ret = float(ret.replace('k', '')) * 1024
		ret = float(ret)
		cf_speed_test_ips_dict[i] = ret
	print('\n源地址速度测试完成\n')
	print('对 https://{}/test 进行的下载速度测试结果如下：\n'.format(original_address))
	cf_speed_test_ips_list = sorted(cf_speed_test_ips_dict.items(), key=lambda x: x[1], reverse=True)
	for i in cf_speed_test_ips_list:
		ret = 'IP {:15} Speed {:10}k'.format(i[0], round(i[1] * 1.0 / 1024, 2))
		print(ret)

	if os.path.exists(os.path.abspath(os.path.join(os.getcwd(), 'temp'))):
		shutil.rmtree(os.path.abspath(os.path.join(os.getcwd(), 'temp')))


if __name__ == '__main__':
	start_time = time.time()
	main()
	print('累计测试时间： {} 秒'.format(int(time.time() - start_time)))
