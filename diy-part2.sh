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

rm -f proto_l2tp.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
rm -f proto_pppoa.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
rm -f proto_pppossh.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
rm -f proto_pptp.lua feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network
