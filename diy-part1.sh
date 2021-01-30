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

rm -f proto_l2tp.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
rm -f proto_pppoa.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
rm -f proto_pppossh.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
rm -f proto_pptp.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
