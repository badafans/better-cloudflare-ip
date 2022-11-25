# better-cloudflare-ip

查找适合自己当前网络环境的优选Cloudflare Anycast IP

旧版本即将停止服务，后续版本如果没有明显BUG也不再更新!

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


## 用户数据安全声明

此版本不需要用户上传任何数据到服务器，服务器仅提供IP地址池维护以及下发！

## 用户自定义数据

用户可自定义ips-v4.txt和ips-v6.txt的IP地址段，如果使用数据更新将会覆盖本地自定义的数据

自定义ips-v4.txt的内容格式为 x.x.x.x或者x.x.x.x/x的CIDR写法，默认提取.前三位

自定义ips-v6.txt的内容格式为 x:x:x:x:x:x:x:x或者x:x:x:x:x:x:x:x/x的CIDR写法，默认提取:前三位

更多自定义玩法待用户自己发现

## Windows批处理版本

请下载Release版本使用,不要使用Git Clone下载(会出现乱码)

Windows 7用户推荐使用ANSI编码版本

Windows 8及以上版本用户推荐使用UTF-8编码版本

注:ANSI编码版本可以Windows全平台通用，部分Windows系统的BUG会导致控制台输出乱码

点击下载[Windows版本](https://github.com/badafans/better-cloudflare-ip/releases/latest/download/batch.zip)

## Linux版本

完整复制下方链接粘贴到控制台并回车，后续运行只需输入./cf.sh并回车即可

目前已经测试 Termux、OpenWrt、Ubuntu、Debian、CentOS、MacOS、Raspbian、Armbian、iSH

``` bash
curl https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh -o cf.sh && chmod +x cf.sh && ./cf.sh
```

## 引用声明

对于 Cloudflare ASN https://bgp.he.net/AS13335 ，Cloudflare IP Ranges 来自 https://www.cloudflare.com/zh-cn/ips/
