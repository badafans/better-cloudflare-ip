\# better-cloudflare-ip

适合中国大陆用户查找适合自己当前网络环境的优选cloudflare anycast IP

Linux版本参考下面过程：

linux shell脚本，自动化筛选

具体使用流程，需要编译里面 fping 4.2 修改版本，另外需要系统安装curl支持。

下载修改过的源码 fping-4.2.tar.gz  点击链接下载源码 https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/fping-4.2.tar.gz

具体编译使用流程如下
 

tar -vxf fping-4.2.tar.gz

cd fping-4.2

./configure

make

cd src

sudo ./cf.sh

  
其中的cf.sh是由本人编写，测速服务器用的文件是cloudflare workers的反代到苹果官网的一个视频文件。由于cloudflare workers的每天请求次数的限制，请大家不要恶意反复使用。

对于测速结果，自行判断是否跟你的本地宽带接近。如果不满意测速结果，再次运行./cf.sh shell脚本再次测速，测试到满意为止。

下面是我自己测试的一段视频 https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/root%40ubuntu_%20~%202020-07-27%2016-38-05.mp4

以上使用只针对Linux用户


Windows版本全自动无门槛操作

fping-4.2 for win32 修改版（基于 msys2.0 修改编译）点击下载  https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/better-cloudflare-ip-win32.zip

1.解压后运行 自动查找优选CF节点.bat 批处理文件（对于 Windows 7 用户或者 cmd 命令行里面不支持curl命令的，自己下载curl全部解压到该程序解压后的目录即可 点击下载curl  https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/curl.zip ）

2.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到50兆的宽带效果，直接输入数值 50 并按回车键

3.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果（可以结合里面的单IP测速的批处理来做校验测试）

4.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

5.目前Windows版本内置的 anycast ip 数量为 725985 个，运气好的话三分钟就能获取到自己想要的优选 IP


使用反馈，欢迎加入 Telegram 群组进行沟通 https://t.me/better_cloudflare_ip
