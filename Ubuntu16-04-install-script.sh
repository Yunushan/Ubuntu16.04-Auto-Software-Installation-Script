#!/bin/sh

# Variables
cpuarch=`uname -m`

# Select Which Softwares to be Installed
printf "\n"

echo "1-) Install PHP7.3"
echo "2-) Nginx"
echo "3-) Apache2"
echo "4-) VLC"
echo "5-) Visual Studio Code"
echo "6-) FFMPEG"
echo "7-) Monitoring Tools"
echo "8-) WineHQ Staging"
echo "9-) Qbittorrent"
echo "10-) Netbeans"
echo "11-) Gimp 2.10"
echo "20-) Exit"
printf "\nSelect: "
read choose

if [ "$choose" = "20" ];then

exit

fi


# Loading Bar Starts

printf "Installation starting"
value=0
while [ $value -lt 600 ]
do
value=$((value+20))
printf "."
sleep 0.05
done
printf "\n"
# Loading Bar Ends

sudo apt update
sudo apt install wget curl -y
printf "\n"

# Signing keys Folder
sudo mkdir /root/signing-keys/

# INSTALLATION BY SELECTION
# 1) PHP 7.3
case $choose in
1)
sudo apt install -y python-software-properties
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y php7.3 php7.3-w php7.3-fpm php7.3-pdo php7.3-mysql php7.3-curl php7.3-gd php7.3-mbstring
;;

# 2- Nginx
2)

sudo wget https://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
echo -e "\n\n#OFFICIAL NGINX PACKAGES\n" >> /etc/apt/sources.list
echo -e "deb http://nginx.org/packages/ubuntu/ xenial nginx\n" >> /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/ubuntu/ xenial nginx" >> /etc/apt/sources.list
sudo apt update
sudo apt install nginx
sudo mv nginx_signing.key /root/signing-keys/

;;


# 3- Apache2
3)
sudo add-apt-repository ppa:ondrej/apache2 -y
sudo apt update
sudoapt install apache2 -y

;;

4) # VLC

snap install vlc
;;

5) # Visual Studio Code

sudo wget https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i code_*

;;

6) #FFMPEG

sudo add-apt-repository ppa:jonathonf/ffmpeg-4 -y
sudo apt update
sudo apt install ffmpeg -y
;;

7) #Monitoring Tools

sudo apt install htop iftop atop glances monit powertop iotop apachetop -y

;;

8) # WINEHQ


if [ "$cpuarch" = "x86_64" ];then

sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main' 
sudo apt update
sudo apt install --install-recommends winehq-staging -y
sudo mv winehq.key /root/signing-keys/

elif [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i686" ];then

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main' 
sudo apt update
sudo apt install --install-recommends winehq-staging -y
sudo mv winehq.key /root/signing-keys/
fi
;;

9) # Qbittorrent

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update 
sudo apt install qbittorrent -y

;;

10) # NetBeans

wget https://www-eu.apache.org/dist/incubator/netbeans/incubating-netbeans/incubating-10.0/incubating-netbeans-10.0-bin.zip Downloads
sudo unzip incubating-netbeans-10.0-bin.zip
sudo apt install default-jdk -y

;;

11) # Gimp 2.10

sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt update
sudo apt install flatpak -y
wget https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref -y

;;
esac