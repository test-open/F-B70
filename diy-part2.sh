#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.111.1/g' package/base-files/files/bin/config_generate
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/msgid "Interface Info"/msgid "Base Setting"/g' package/lean/luci-app-zerotier/po/zh-cn/zerotier.po
sed -i 's/msgstr "接口信息"/msgstr "基本设置"/g' package/lean/luci-app-zerotier/po/zh-cn/zerotier.po
sed -i '$a \\' package/lean/luci-app-zerotier/po/zh-cn/zerotier.po
sed -i '$a msgid "Interface Info"' package/lean/luci-app-zerotier/po/zh-cn/zerotier.po
sed -i '$a msgstr "接口信息"' package/lean/luci-app-zerotier/po/zh-cn/zerotier.po
#bypass
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-bypass package/diy/luci-app-bypass
#ByPass依赖
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
