#!bash

# add some 3rd-party PPA
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

# some common stuff
sudo apt-get install software-properties-common build-essential python gcc g++ openssh-client openssh-server

# oracle java 7
sudo apt-get install oracle-java7-installer

# git stuff
sudo apt-get install git git-core bash-completion git-flow gitk

# fun stuff
sudo apt-get install ibus-rime sl indicator-multiload
# ibus-rime: 若部署完毕后，可以通过 Ctrl+` 唤出方案选单，输入方案却仍无法正常使用，请查看日誌文件定位错误。
