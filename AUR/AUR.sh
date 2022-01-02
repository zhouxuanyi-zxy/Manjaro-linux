#!/bin/bash
####################################################
# Manjaro Linux常用软件一键安装脚本                   #
# v0.3                                             #                    
# Author: zhouxuanyi                               #
# Copyright (c) 2021 zhouxuanyi                    #                                
# URL: https://gitee.com/zhouxuanyi/Manjaro-linux  #                          
# License: MIT                                     #
####################################################
if [ `whoami` = "root" ];
then
echo "请使用非root权限执行此脚本！"
exit 
fi 
read -r -p "您是否要安装此工具？（Y/N）" install
install=${install,,} # tolower
if [[ $install =~ ^(yes|y| ) ]] || [[ -z $install ]]; then
    yay -S deepin-wine5 #安装微信依赖
    yay -S com.qq.weixin.deepin #安装微信
fi