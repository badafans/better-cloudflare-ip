适合中国大陆用户查找适合自己当前网络环境的优选cloudflare anycast IP

   

\# better-cloudflare-ip

适合中国大陆用户查找适合自己当前网络环境的优选cloudflare anycast IP

linux shell脚本，自动化筛选

  

具体使用流程，需要编译里面 fping 4.2 修改版本，另外需要系统安装curl支持。

下载源码 fping-4.2.tar.gz

具体流程如下

  

tar -vxf fping-4.2.tar.gz

cd fping-4.2

./configure

make

cd src

./cf.sh

  

其中的cf.sh是由本人编写，测速服务器用的文件是cloudflare workers的反代到苹果官网的一个视频文件。由于cloudflare workers的每天请求次数的限制，请大家不要恶意反复使用。

对于测速结果，自行判断是否跟你的本地宽带接近。如果不满意测速结果，再次运行./cf.sh shell脚本再次测速，测试到满意为止。
