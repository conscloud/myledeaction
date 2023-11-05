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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomato.git package/feeds/luci/luci-thmem-opentomato
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/feeds/luci/luci-theme-opentomcat
rm -rf feeds/luci/themes/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
#git clone https://github.com/vernesong/OpenClash.git 
git clone --branch master --depth=1 https://github.com/vernesong/OpenClash.git feeds/luci/applications/openclash
#mv OpenClash/luci-app-openclash package/lean/
#wget -P package/kernel/mac80211/patches/rt2x00/ https://raw.githubusercontent.com/WYC-2020/lede/893ba3d9e6984f90560a0f93921f651ee3ae96cf/package/kernel/mac80211/patches/rt2x00/651-rt2x00-driver-compile-with-kernel-5.15.patch 
