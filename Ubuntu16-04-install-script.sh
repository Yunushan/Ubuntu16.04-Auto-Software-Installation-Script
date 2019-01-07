#!/bin/sh

# Variables
cpuarch=`uname -m`

# Select Which Softwares to be Installed
printf "\n"

echo "1-) PHP7.3"
echo "2-) Nginx"
echo "3-) Apache2"
echo "4-) VLC"
echo "5-) Visual Studio Code"
echo "6-) FFMPEG"
echo "7-) Monitoring Tools"
echo "8-) WineHQ Staging"
echo "9-) Qbittorrent"
echo "10-) Netbeans"
echo "11-) Gimp"
echo "12-) Nmap"
echo "13-) Skype"
echo "14-) Steam"
echo "15-) OBS"
echo "16-) OpenShot"
echo "17-) Oracle VirtualBox 6.0"
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

# Downloaded tmp files

sudo mkdir /root/TempDL/

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

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y

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

wget https://www-eu.apache.org/dist/incubator/netbeans/incubating-netbeans/incubating-10.0/incubating-netbeans-10.0-bin.zip
sudo unzip incubating-netbeans-10.0-bin.zip
sudo apt install default-jdk -y
sudo mv incubating-netbeans-10.0-bin.zip /root/TempDL/

;;

11) # Gimp 2.10

sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt update
sudo apt install flatpak -y
wget https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref -y
sudo mv org.gimp.GIMP.flatpakref /root/TempDL/

;;

12) # Nmap
if [ "$cpuarch" = "x86_64" ];then
sudo apt install alien
wget https://nmap.org/dist/nmap-7.70-1.x86_64.rpm
sudo alien nmap-7.70-1.x86_64.rpm
sudo dpkg --install nmap-7.70-1_amd64.deb



elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then

sudo apt install alien
wget https://nmap.org/dist/nmap-7.70-1.i686.rpm
sudo alien nmap-7.70-1.i686.rpm
sudo dpkg --install nmap-7.70-1_i386.deb

fi

;;

13) # Skype

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb

;;

14) # Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb

;;

15) # OBS

sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt install obs-studio -y

;;

16) # OpenShot
sudo add-apt-repository ppa:openshot.developers/ppa -y
sudo apt update
sudo apt install openshot-qt -y

;;

17) #Oracle VirtualBox 6.0

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install linux-headers-$(uname -r) dkms -y
sudo apt install virtualbox-6.0 -y
wget https://download.virtualbox.org/virtualbox/6.0.0/Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack
sudo mv Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack /root/TempDL/

;;
esac