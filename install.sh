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
read -r -p "您是否要安装此工具？（Y/N）" install
install=${install,,} # tolower
if [[ $install =~ ^(yes|y| ) ]] || [[ -z $install ]]; then
    mkdir /tmp/Manjaro-linux #设置/tmp/为临时目录
    cd /tmp/Manjaro-linux
    echo 正在备份默认安装源
    sudo cp /etc/pacman.conf /etc/pacman.conf.bak #备份源
    sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
    clear
    echo 正在修改源
    sudo echo '[archlinuxcn]' >> /etc/pacman.conf
    sudo echo 'SigLevel = Optional TrustedOnly' >> /etc/pacman.conf
    sudo echo '##中科大源##' >> /etc/pacman.conf
    sudo echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf
    sudo echo '##阿里源##' >> /etc/pacman.conf
    sudo echo 'Server = https://mirrors.aliyun.com/archlinuxcn/$arch' >> /etc/pacman.conf
    sudo echo '##清华源##' >> /etc/pacman.conf
    sudo echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf
    sudo echo '## Country : China' >> /etc/pacman.d/mirrorlist
    sudo echo 'Server = https://mirrors.huaweicloud.com/manjaro/stable/$repo/$arch' >> /etc/pacman.d/mirrorlist
    sudo echo '## Country : China' >> /etc/pacman.d/mirrorlist
    sudo echo 'Server = https://mirrors.ustc.edu.cn/manjaro/stable/$repo/$arch' >> /etc/pacman.d/mirrorlist
    clear
    echo 正在更新软件源
    sudo pacman -Syy --noconfirm && sudo pacman -S --noconfirm archlinuxcn-keyring
    clear
    echo 开始安装常用软件
    sudo pacman -S --noconfirm vim #安装vim
    clear
    sudo pacman -S --noconfirm netease-cloud-music #安装网易云音乐
    clear
    sudo pacman -S --noconfirm google-chrome #安装谷歌浏览器
    clear
    echo 安装zsh
    sudo pacman -S --noconfirm zsh #安装zsh
    clear
    cd /tmp/Manjaro-linux
    echo 安装Virtual Box
    wget https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-Linux_amd64.run
    chmod 777 VirtualBox-6.1.18-142142-Linux_amd64.run
    sudo ./VirtualBox-6.1.18-142142-Linux_amd64.run
    clear
    echo 安装QQ
    wget http://down.qq.com/qqweb/LinuxQQ/linuxqq_2.0.0-b2-1084_x86_64.pkg.tar.xz
    sudo pacman -U --noconfirm linuxqq_2.0.0-b2-1084_x86_64.pkg.tar.xz
    clear
    echo 安装Arch Linux AUR管理器
    sudo pacman -S --noconfirm yay
    yay --aururl "https://aur.tuna.tsinghua.edu.cn" --save
    clear
    echo 安装python
    sudo pacman -S --noconfirm python
    clear
    echo 安装ohmyzsh
    sudo git clone https://github.com/ohmyzsh/ohmyzsh.git
    cd /tmp/Manjaro-linux/ohmyzsh/tools/
    chmod 777 install.sh
    sudo ./install.sh #开始安装ohmyzsh
    clear
    echo 正在清理残余文件
    sudo rm -f -r /tmp/Manjaro-linux/
    echo 成功安装完成！已安装：vim、网易云音乐、Google Chrome、zsh、Virtual Box、QQ、ohmyzsh、yay。
    exit 1
fi