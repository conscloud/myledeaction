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
# echo -e 'net.core.wmem_max=16777216\nnet.core.rmem_max=16777216' >> package/base-files/files/etc/sysctl.conf
