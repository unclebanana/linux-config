# Check that HTTPS transport is available to APT
if [ ! -e /usr/lib/apt/methods/https ]; then
	sudo apt-get update
	sudo apt-get install -y apt-transport-https
fi

# Add the repository to your APT sources
#sudo echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
sudo echo deb http://mirror.yandex.ru/mirrors/docker/ docker main > /etc/apt/sources.list.d/docker.list

# Then import the repository key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# Install docker
sudo apt-get update
sudo apt-get install -y lxc-docker

#
# Alternatively, just use the curl-able install.sh script provided at https://get.docker.com
#

sudo groupadd docker
sudo gpasswd -a developer docker
sudo service docker restart

sudo apt-get install python-pip
sudo pip install fig