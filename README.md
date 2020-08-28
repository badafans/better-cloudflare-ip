# better-cloudflare-ip

适合中国大陆用户查找适合自己当前网络环境的优选Cloudflare Anycast IP

## Linux版本

linux shell脚本，自动化筛选

具体使用流程，需要编译里面 fping 4.2 修改版本，另外需要系统安装curl支持。

下载修改过的源码 fping-4.2.tar.gz  点击链接下载[源码](https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/fping-4.2.tar.gz)

具体编译使用流程如下
 
 ```bash
tar -vxf fping-4.2.tar.gz

cd fping-4.2

./configure

make

cd src

sudo ./cf.sh
```

1.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

2.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果

3.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

4.内置的 anycast ip 数量为 725985 个，运气好的话一分多钟就能获取到自己想要的优选 IP
  
下面是我自己用 ubuntu 测试的一段[演示视频](https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/linux.mp4)


## Windows版本

windows批处理全自动无门槛操作，自动化筛选

fping-4.2 for win32 修改版（基于 msys2.0 修改编译）点击[下载](https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/better-cloudflare-ip-win32.zip)

1.解压后运行 cf.bat 批处理文件（可能需要管理员权限运行，对于 Windows 7 用户或者 cmd 命令行里面不支持curl命令的，自己下载curl全部解压到该程序解压后的目录即可 点击[下载curl](https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/curl.zip) ）

2.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

3.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果（可以结合里面的单IP测速的批处理来做校验测试）

4.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

5.内置的 anycast ip 数量为 725985 个，运气好的话三分多钟就能获取到自己想要的优选 IP

下面是我自己用 Windows 10 测试的一段[演示视频](https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/windows.mp4)

## Android版本

1.安装termux,完整复制下方链接粘贴到termux并回车

``` bash
curl https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/cf.sh -o cf.sh && chmod +x cf.sh && ./cf.sh
```

2.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

3.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果（可以结合里面的单IP测速的批处理来做校验测试）

4.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

5.内置的 anycast ip 数量为 725985 个，运气好的话六分多钟就能获取到自己想要的优选 IP

6.由于Android termux本身难以支持root权限,整套ICMP丢包测试逻辑完全重新架构,不依赖与fping,所以整体测试相对较为耗时

下面是我自己用 Termux 测试的一段[演示视频](https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/termux.mp4)

## 声明

测速服务器用的文件是来自 Cloudflare 官方测速服务器提取出来的测速文件,官方测速地址 https://speed.cloudflare.com/

其中 fping 是基于 GitHub 开源项目 https://github.com/schweikert/fping  4.2发行版修改而来，所有脚本均为本人原创内容，转载请注明出处！

对于 Cloudflare Anycast 节点汇总，均为本人扫描 Cloudflare 公开节点汇总而来，Cloudflare IP Ranges 来自 https://www.cloudflare.com/zh-cn/ips/

使用反馈，欢迎加入 Telegram 群组进行沟通 https://t.me/better_cloudflare_ip
