#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#mt-wifi
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-mtwifi package/diy/luci-app-mtwifi
svn co https://github.com/garypang13/openwrt-packages/trunk/mt-drivers package/diy/mt-driver
svn co https://github.com/garypang13/openwrt-packages/trunk/default-settings package/diy/default-settings
#vssr
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-vssr package/diy/luci-app-vssr
svn co https://github.com/garypang13/openwrt-packages/trunk/shadowsocksr-libev package/diy/shadowsocksr-libev
svn co https://github.com/garypang13/openwrt-packages/trunk/pdnsd-alt package/diy/pdnsd-alt
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb package/diy/lua-maxminddb
svn co https://github.com/garypang13/openwrt-packages/trunk/simple-obfs package/diy/simple-obfs
svn co https://github.com/garypang13/openwrt-packages/trunk/v2ray-plugin package/diy/v2ray-plugin
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan package/diy/trojan
svn co https://github.com/garypang13/openwrt-packages/trunk/ipt2socks package/diy/ipt2socks
#ssr
svn co  https://github.com/garypang13/openwrt-packages/trunk/luci-app-ssr-plus package/diy/luci-app-ssr-plus
svn co  https://github.com/garypang13/openwrt-packages/trunk/dns2socks package/diy/dns2socks
svn co  https://github.com/garypang13/openwrt-packages/trunk/ipt2socks-alt package/diy/ipt2socks-alt
svn co  https://github.com/garypang13/openwrt-packages/trunk/microsocks package/diy/microsocks
svn co  https://github.com/garypang13/openwrt-packages/trunk/tcping package/diy/tcping
svn co  https://github.com/garypang13/openwrt-packages/trunk/naiveproxy package/diy/naiveproxy
svn co  https://github.com/garypang13/openwrt-packages/trunk/redsocks2 package/diy/redsocks2
svn co  https://github.com/garypang13/openwrt-packages/trunk/v2ray package/diy/v2ray
#bypass
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-bypass package/diy/luci-app-bypass
svn co https://github.com/garypang13/openwrt-packages/trunk/chinadns-ng package/diy/chinadns-ng
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan-plus package/diy/trojan-plus
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan-go package/diy/trojan-go
#主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/diy/luci-theme-argon
#svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-argon-config package/diy/luci-app-argon-config
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-zerotier package/diy/luci-app-zerotier
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-accesscontrol package/diy/luci-app-accesscontrol
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-autoreboot package/diy/luci-app-autoreboot
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-socat package/diy/luci-app-socat
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-ramfree package/diy/luci-app-ramfree
git clone https://github.com/small-5/ddns-scripts-dnspod package/diy/ddns-scripts-dnspod
svn co https://github.com/garypang13/openwrt-packages/trunk/ddns-scripts-aliyun package/diy/ddns-scripts-aliyun
