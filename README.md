# better-cloudflare-ip

查找适合自己当前网络环境的优选Cloudflare Anycast IP

## 使用申明

本项目侧重于研究任播技术中丢包率与网速的相互关系，仅供学习使用

禁止使用范围准则如下

a) 相关机构提示网页有威胁的，有非法信息提示的网站。

b)医院类型网站（流产，皮肤病，性病等医院），未获得卫生部资质的网站。

c)网站主体内容含有色情（视频交友，一夜情交友）、违法（办假证，贩卖仿真枪）、封建迷信、游戏私服、游戏外挂、网赚、两性、美女贴图和动漫贴图（尺度过大）、赌博（含贩卖赌博工具。）、博彩等内容。

d)网站存在恶意流氓广告（存在非法内容视频链接，非法网页内容链接）。

e)网站存在任何破坏或试图破坏网络安全的行为，以病毒、木马、恶意代码、钓鱼等方式，试图对网站、网络相关软硬件进行恶意扫描、非法侵入系统、非法获取数据等内容。

f)网站内容存在版权风险的网站（视频，小说，音乐等网站）。

g)网站含有药品销售、保健品销售，但未取得资质的，或严重夸大药效事实。

h)网站主要业务为向非法网站提供支付、交易平台、担保，代理外国金融理财（炒股，炒现货，炒黄金）等服务的网站。

i)网站中大量存在影响社会和谐稳定的内容的网站（涉嫌攻击国家，攻击领导人，攻击人民，言论煽动性质网站）。

j)网站内容含有国家相关法律法规不允许的其他内容。

k)网站内容含有VPN，网络代理等内容。

l) 通过技术手段或非技术手段干扰Cloudflare所有产品正常运营的网站。

m)网站内容为发布虚假不实消息行为，或侵害了他人的合法权益行为的网站。

n) 获取网站内容需要通过登录等方式，无法直接查看造成内容无法审核的网站。

o) 提供影视、软件和应用等下载服务的网站。

## Linux版本

linux shell脚本，自动化筛选

具体使用流程，需要编译里面 fping 4.2 修改版本，另外需要系统安装curl支持。

下载修改过的源码 fping-4.2.tar.gz  点击下载[Linux源码](https://proxy.freecdn.workers.dev/?url=https://github.com/badafans/better-cloudflare-ip/releases/latest/download/linux.tar.gz)

具体编译使用流程如下
 
 ```bash
curl https://github.com/badafans/better-cloudflare-ip/releases/latest/download/linux.tar.gz -o linux.tar.gz

tar -vxf linux.tar.gz

cd linux

./configure

make

cd src

sudo ./cf.sh
```

1.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

2.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果

3.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

4.外置的 anycast ip 数量根据现有可用路由动态调整，每次测试提取其中的1280分之1，运气好的话五十多秒钟就能获取到自己想要的优选 IP

## Windows版本

windows批处理全自动无门槛操作，自动化筛选

fping-4.2 for win32 修改版（基于 msys2.0 修改编译）点击下载[Windows版本](https://proxy.freecdn.workers.dev/?url=https://github.com/badafans/better-cloudflare-ip/releases/latest/download/windows.zip)

1.解压后运行 CF优选IP.bat 批处理文件（可能需要管理员权限运行，对于 Windows 7 用户或者 cmd 命令行里面不支持curl命令的，需要先解压curl.exe到当前目录）

2.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

3.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果（可以结合里面的单IP测速的批处理来做校验测试）

4.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

5.外置的 anycast ip 数量根据现有可用路由动态调整，每次测试提取其中的1280分之1，运气好的话一分多钟就能获取到自己想要的优选 IP

## Android版本

1.安装termux，完整复制下方链接粘贴到termux并回车

``` bash
curl https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh -o cf.sh && chmod +x cf.sh && ./cf.sh
```

2.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

3.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果

4.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

5.外置的 anycast ip 数量根据现有可用路由动态调整，每次测试提取其中的1280分之1，运气好的话一分多钟就能获取到自己想要的优选 IP

6.由于Android termux本身难以支持root权限，整套ICMP丢包测试逻辑完全重新架构，不依赖与fping，所以整体测试相对较为耗时

## 引用声明

其中 fping 是基于 GitHub 开源项目 https://github.com/schweikert/fping  4.2发行版修改而来，所有脚本均为本人原创内容，转载请注明出处！

对于 Cloudflare Anycast 节点汇总，均为本人扫描 Cloudflare 公开节点汇总而来，Cloudflare IP Ranges 来自 https://www.cloudflare.com/zh-cn/ips/
