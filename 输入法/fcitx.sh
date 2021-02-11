#!/bin/bash
####################################################
# Manjaro Linux常用软件一键安装脚本                   #
# v0.3                                             #                    
# Author: zhouxuanyi                               #
# Copyright (c) 2021 zhouxuanyi                    #                                
# URL: https://gitee.com/zhouxuanyi/Manjaro-linux  #                          
# License: MIT                                     #
###################################################
if [ `whoami` != "root" ];
then
echo "请使用root权限执行此脚本！"
exit 
fi 
read -r -p "您是否要安装fcitx-im和fcitx-configtool？（Y/N)" install
install=${install,,} # tolower
if [[ $install =~ ^(yes|y| ) ]] || [[ -z $install ]]; then
    sudo pacman -S --noconfirm fcitx-im
    sudo pacman -S --noconfirm fcitx-configtool
    echo 如果您要安装搜狗输入法，请待会使用非root用户执行“install sogou.sh“
fi
    
