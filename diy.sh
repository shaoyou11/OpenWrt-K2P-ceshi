#!/bin/bash


# Modify default IP.
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
#全新的[argon-主题]此主题玩法很多,这里看说明【https://github.com/jerrykuku/luci-theme-argon/blob/18.06/README_ZH.md】
#用WinSCP连接openwrt，在/www/luci-static/argon里面创建background文件夹（如果本身就有background就不需要创建）来存放jpg png gif格式图片可以自定义登陆界面，gif图片为动态登陆界面
