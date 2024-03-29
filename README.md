# Manjaro Linux常用软件一键安装脚本

[![License](https://img.shields.io/badge/license-MIT-4EB1BA.svg?style=flat-square)](https://gitee.com/zhouxuanyi/Manjaro-linux/blob/master/LICENSE)

#### 介绍 ####
Manjaro Linux常用软件一键安装脚本，仅适用于Manjaro Linux（不适用于Arch Linux的其他各个分枝）。含有vim、Google Chrome、网易云音乐、Virtual Box、zsh、ohmyzsh、QQ、yay、谷歌拼音（可选）、搜狗输入法（可选）、微信（可选）、vs code。此脚本适用于刚接触Manjaro的小白。安装时间大约在2-5分钟。

（安装输入法的详细安装方法请见：“输入法”文件夹中的README.md文件。）

（如果要安装AUR里的软件，详细的安装方法请见：“AUR”文件夹中的README.md文件）

Manjaro Linux 官网：https://manjaro.org  推荐下载镜像地址：[中科大源](https://mirrors.ustc.edu.cn/)   [清华源](https://mirrors.tuna.tsinghua.edu.cn/)

（注：安装过程需要全程联网，时间视具体网速而定。）

#### 安装教程 ####

1. `pacman -S git`
2. `git clone https://github.com/zhouxuanyi-zxy/Manjaro-linux.git`
3. `cd Manjaro-linux`
4. `chmod +x install.sh`
5. `sudo ./install.sh`

#### 注意 ####

如果./xxxxxx.sh出现：        

（在zsh显示） zsh: ./xxxxxx.sh: bad interpreter: /bin/bash^M: 没有那个文件或目录

（在bash显示） bash: ./fcitx.sh：/bin/bash^M：解释器错误: 没有那个文件或目录

且用vi或vim打开后在最底行显示：

"xxxxxx.sh"  [dos]  XXL , XXB

那么请用vi或vim打开后，（在命令模式中）输入：  

`:set ff=unix`

然后执行：

`:wq!`

再次执行(./)即可

#### 历史版本 ####
v0.1 (2021.1.30)

1、可以安装vim、网易云音乐、Google Chrome、zsh、ohmyzsh、Virtual Box、QQ。

2、创建此仓库。


v0.2 (2021.1.31)

1、修复了更改源时无法把“Server”全部输入的bug。 ：）

2、把安装顺序调换，把不能自动安装的ohmyzsh放在最后安装。

3、v0.3将增加清华源和阿里源。


v0.3 (2021.2.1)

1、修复了/etc/pacman.d/mirrorlist 的bug，并把华为源和中科大源添加进/etc/pacman.d/mirrorlist 。

2、添加清华源和阿里源进/etc/pacman.conf 。

3、安装AUR管理器：yay ，并添加清华AUR源。


v0.38 (2021.2.14)

1、修复了一些小bug。

2、可以安装vim、网易云音乐、Google Chrome、zsh、ohmyzsh、Virtual Box、QQ、visual studio code。


本项目有缘再更新

v0.39 (2022.6.15)

1、删除清华AUR源，详见 https://mirrors.tuna.tsinghua.edu.cn/news/remove-aur/

2、ohmyzsh为自动安装

3、本项目主要储存库改为 https://github.com/zhouxuanyi-zxy/Manjaro-linux 

[gitee](https://gitee.com/zhouxuanyi/Manjaro-linux)储存库为备选


v0.39.1 (2024.2.14)

1、安装来自AUR的linuxqq

2、使用官方源内的virtualbox

3、使用archlinuxcn源内的oh-my-zsh

**此版本未使用Manjaro Linux测试，仅使用了Arch Linux测试**

