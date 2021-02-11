#### 输入法安装方法 ####


一、谷歌输入法：


1、pacman -S git

2、git clone https://gitee.com/zhouxuanyi/Manjaro-linux.git

3、cd Manjaro-linux

4、cd 输入法

5、chmod 777 谷歌输入法.sh

6、./谷歌输入法.sh

7、sudo vim ~/.xprofile ，输入：

export GTK_IM_MODULE=fcitx

export QT_IM_MODULE=fcitx

export XMODIFIERS="@im=fcitx"


8、安装完成！



二、搜狗输入法：


1、pacman -S git

2、git clone https://gitee.com/zhouxuanyi/Manjaro-linux.git

3、cd Manjaro-linux

4、cd 输入法

5、chmod 777 fcitx.sh

6、./fcitx.sh

7、chmod 777 install sogou.sh

8、./install sogou.sh

9、sudo vim ~/.xprofile ，输入：

export GTK_IM_MODULE=fcitx

export QT_IM_MODULE=fcitx

export XMODIFIERS="@im=fcitx"


10、安装完成！