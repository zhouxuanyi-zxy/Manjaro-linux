#!/bin/bash
####################################################
# Manjaro Linux常用软件一键安装脚本                   #
# v0.3                                             #                    
# Author: zhouxuanyi                               #
# Copyright (c) 2021 zhouxuanyi                    #                                
# URL: https://gitee.com/zhouxuanyi/Manjaro-linux  #                          
# License: MIT                                     #
###################################################
read -r -p "您是否要安装谷歌输入法？（Y/N)" install
install=${install,,} # tolower
if [[ $install =~ ^(yes|y| ) ]] || [[ -z $install ]]; then
    sudo pacman -S --noconfirm fcitx-im
    sudo pacman -S --noconfirm fcitx-configtool
    sudo pacman -S --noconfirm fcitx-googlepinyin
fi        
