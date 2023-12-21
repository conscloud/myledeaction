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
sed -i 's/192.168.1.1/192.168.3.254/g' package/base-files/files/bin/config_generate
sed -i "s/h\=\${g}' - '/h\=/g" package/lean/autocore/files/x86/autocore
# sed -i "s/2023.2.2/2023.10.0/g" package/feeds/packages/cloudflared/Makefile 
# sed -i "s/b0abaff125d29c517894f6ea74dcc7044c92500670463595ba9ff4950a1d2fc2/2d2df4dd4992eef485f7ffebc0a1e9e6292b42ca42341f2e46224f17155e9532/g" package/feeds/packages/cloudflared/Makefile 
# echo -e 'net.core.wmem_max=16777216\nnet.core.rmem_max=16777216' >> package/base-files/files/etc/sysctl.conf
