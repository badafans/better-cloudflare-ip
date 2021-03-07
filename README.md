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


## 用户数据安全声明

1.从20210307版本以后，所有平台的版本都需要上传用户部分非敏感数据到服务器（Anycast IP、峰值速度、用户AS自治域、用户META城市归属）

2.用户上传的数据用来做模型分析建立关系数据库，建立精准IP推送的模型（类似机器学习）

3.人人为我，我为人人的原则！数据提交的样本越多，同一运营商级别下的匹配程度越高（快速出结果）

4.服务端不会保存任何关系用户的其它无效数据，只为提高数据精确程度设计的定向性算法（避免大海捞针）

5.服务端程序目前不会对外开源，涉及到算法模型结构等问题，后续版本会不断改进算法模型（此项目的侧重点）

6.对于担心用户数据安全问题的，请自觉使用20210307以前的版本（无法使用大数据分析模型带来优质的IP）


## Windows版本

windows批处理全自动无门槛操作

fping-4.2 for win32 修改版（基于 msys2.0 修改编译）点击下载[Windows版本](https://proxy.freecdn.workers.dev/?url=https://github.com/badafans/better-cloudflare-ip/releases/latest/download/windows.zip)

## Linux版本

linux shell脚本+fping

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

## Android版本

安装termux，完整复制下方链接粘贴到termux并回车，后续运行只需输入./cf.sh并回车即可

``` bash
curl https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh -o cf.sh && chmod +x cf.sh && ./cf.sh
```

## OpenWrt版本

完整复制下方链接粘贴到openwrt shell并回车，后续运行只需输入./cf-openwrt.sh并回车即可

``` bash
curl https://proxy.freecdn.workers.dev/?url=https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf-openwrt.sh -o cf-openwrt.sh && chmod +x cf-openwrt.sh && ./cf-openwrt.sh
```

## 引用声明

其中 fping 是基于 GitHub 开源项目 https://github.com/schweikert/fping  4.2发行版修改而来，所有脚本均为本人原创内容，转载请注明出处！

对于 Cloudflare Anycast 节点汇总，定期扫描 Cloudflare 公开节点汇总而来，Cloudflare IP Ranges 来自 https://www.cloudflare.com/zh-cn/ips/
