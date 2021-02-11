#!/bin/bash
####################################################
# Manjaro Linux常用软件一键安装脚本                   #
# v0.3                                             #                    
# Author: zhouxuanyi                               #
# Copyright (c) 2021 zhouxuanyi                    #                                
# URL: https://gitee.com/zhouxuanyi/Manjaro-linux  #                          
# License: MIT                                     #
###################################################
if [ `whoami` = "root" ];
then
echo "请使用非root权限执行此脚本！"
exit 
fi 
read -r -p "您是否要安装搜狗输入法？（Y/N)" install
install=${install,,} # tolower
if [[ $install =~ ^(yes|y| ) ]] || [[ -z $install ]]; then
    yay -S fcitx-sogoupinyin
fi    
