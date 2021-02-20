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
#zerotier汉化
sed -i 's/msgid "Interface Info"/msgid "Base Setting"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgstr "接口信息"/msgstr "基本设置"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a \\' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgid "Interface Info"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgstr "接口信息"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a \\' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgid "NOT RUNNING"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgstr "未运行"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a \\' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgid "RUNNING"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgstr "运行中"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
#Socat汉化
sed -i 's/msgstr "Socat"/msgstr "端口转发"/g' package/diy/luci-app-socat/po/zh_Hans/socat.po
#accesscontrol汉化
sed -i 's/msgstr "上网时间控制"/msgstr "网络控制"/g' package/diy/luci-app-accesscontrol/po/zh_Hans/mia.po
#ramfree
sed -i '$a \\' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a msgid "VPN"' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a msgstr "虚拟网络"' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a \\' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a msgid "APPLY"' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a msgstr "启用"' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a \\' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a msgid "Apply"' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
sed -i '$a msgstr "启用"' package/diy/luci-app-ramfree/po/zh_Hans/release_ram.po
