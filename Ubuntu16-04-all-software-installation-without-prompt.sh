#!/bin/sh

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
sudo apt install --no-install-recommends gnome-panel -y
printf "\n"

# Signing keys Folder
mkdir /home/$superuser/Downloads/signing-keys/

# Downloaded tmp files

mkdir /home/$superuser/Downloads/TempDL/

# INSTALLATION BY SELECTION
# PHP 7.3
sudo apt install -y python-software-properties
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y php7.3 php7.3-w php7.3-fpm php7.3-pdo php7.3-mysql php7.3-curl php7.3-gd php7.3-mbstring

# Nginx

sudo wget https://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
echo -e "\n\n#OFFICIAL NGINX PACKAGES\n" >> /etc/apt/sources.list
echo -e "deb http://nginx.org/packages/ubuntu/ xenial nginx\n" >> /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/ubuntu/ xenial nginx" >> /etc/apt/sources.list
sudo apt update
sudo apt install nginx
sudo mv nginx_signing.key /home/$superuser/Downloads/signing-keys/

# Apache2
sudo add-apt-repository ppa:ondrej/apache2 -y
sudo apt update
sudo apt install apache2 -y

# VLC

snap install vlc

# Visual Studio Code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y

#FFMPEG

sudo add-apt-repository ppa:jonathonf/ffmpeg-4 -y
sudo apt update
sudo apt install ffmpeg -y


#Monitoring Tools

sudo apt install htop iftop atop glances monit powertop iotop apachetop -y

# WINEHQ


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
sudo mv winehq.key /home/$superuser/Downloads/signing-keys/
fi

# Qbittorrent

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update 
sudo apt install qbittorrent -y

# NetBeans

wget https://www-eu.apache.org/dist/incubator/netbeans/incubating-netbeans/incubating-10.0/incubating-netbeans-10.0-bin.zip
unzip incubating-netbeans-10.0-bin.zip -d /home/$superuser/Downloads/TempDL/
sudo apt install default-jdk -y
sudo mv incubating-netbeans-10.0-bin.zip /home/$superuser/Downloads/TempDL/
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/netbeans/bin/netbeans
Name=Netbeans
Comment=Netbeans
Icon=/home/$superuser/Downloads/TempDL/netbeans/nb/netbeans.icns" >> /home/$superuser/Desktop/Netbeans.desktop
chmod +x /home/$superuser/Desktop/Netbeans.desktop

# Gimp 2.10

sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt update
sudo apt install flatpak -y
wget https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref -y
sudo mv org.gimp.GIMP.flatpakref /home/$superuser/Downloads/TempDL/

# Nmap
if [ "$cpuarch" = "x86_64" ];then
sudo apt install alien -y
wget https://nmap.org/dist/nmap-7.70-1.x86_64.rpm
sudo alien nmap-7.70-1.x86_64.rpm
sudo dpkg --install nmap_7.70-2_amd64.deb



elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then

sudo apt install alien -y
wget https://nmap.org/dist/nmap-7.70-1.i686.rpm
sudo alien nmap-7.70-1.i686.rpm
sudo dpkg --install nmap_7.70-2_i386.deb

fi

# Skype

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb

# Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb

# OBS-studio

sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt install obs-studio -y

# OpenShot
sudo add-apt-repository ppa:openshot.developers/ppa -y
sudo apt update
sudo apt install openshot-qt -y

#Oracle VirtualBox 6.0

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install linux-headers-$(uname -r) dkms -y
sudo apt install virtualbox-6.0 -y
wget https://download.virtualbox.org/virtualbox/6.0.0/Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack
sudo mv Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack /home/$superuser/Downloads/TempDL/

#Sublime Text 3

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

# Brave Web Browser

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ `lsb_release -sc` main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-`lsb_release -sc`.list
sudo apt update
sudo apt install brave-browser brave-keyring -y

# Tor Browser 8.0.4
if [ "$cpuarch" = "x86_64" ];then

wget https://www.torproject.org/dist/torbrowser/8.0.4/tor-browser-linux64-8.0.4_en-US.tar.xz
tar xvJf tor-browser-linux64-8.0.4_en-US.tar.xz
sudo mv tor-browser-linux64-8.0.4_en-US.tar.xz /home/$superuser/Downloads/TempDL/

elif [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i686" ];then
wget https://www.torproject.org/dist/torbrowser/8.0.4/tor-browser-linux32-8.0.4_en-US.tar.xz
tar xvJf tor-browser-linux32-8.0.4_en-US.tar.xz
sudo mv tor-browser-linux32-8.0.4_en-US.tar.xz /home/$superuser/Downloads/TempDL/
fi

#VMware Workstation 15 Pro

wget -O VMware-Workstation-15-Pro.bundle https://www.vmware.com/go/getworkstation-linux
sudo apt-get install gcc build-essential linux-headers-$(uname -r) -y
sudo bash VMware-Workstation-15-Pro.bundle
sudo mv VMware-Workstation-15-Pro.bundle /home/$superuser/Downloads/TempDL/

# Eclipse IDE

sudo add-apt-repository ppa:lyzardking/ubuntu-make -y
sudo apt update
sudo apt install ubuntu-make -y

# Eclipse IDE for Java Developers

umake ide eclipse

#Eclipse IDE for Java Enterprise edition Developers

umake ide eclipse-jee

#Eclipse IDE for C/C++ Developer

umake ide eclipse-cpp

# Eclipse for PHP Developers

umake ide eclipse-php

#Vuze (Bittorrent Client)

sudo snap install vuze-vs

#Utorrent

sudo snap install utorrent

#Deluge

sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:deluge-team/ppa -y
sudo apt update
sudo apt install deluge -y

#Transmission
sudo add-apt-repository ppa:transmissionbt/ppa -y
sudo apt update
sudo apt transmission transmission-cli transmission-common transmission-daemon -y

#MPV

sudo add-apt-repository ppa:mc3man/mpv-tests -y
sudo apt-get update
sudo apt install mpv

#SMPlayer

sudo add-apt-repository ppa:rvm/smplayer -y
sudo apt update
sudo apt-get install smplayer smplayer-themes smplayer-skins -y

# Kazam
sudo add-apt-repository ppa:sylvain-pineau/kazam -y
sudo apt update
sudo apt install kazam -y
sudo apt install python3-cairo python3-xlib -y

# Audocity

sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y
sudo apt update
sudo apt install audocity -y


# PlayonLinux

wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_xenial.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt update
sudo apt-get install playonlinux

#Conky

sudo apt install conky-all -y
sudo apt-add-repository ppa:teejee2008/ppa -y
sudo apt update
sudo apt install conky-manager -y

#HandBrake

sudo add-apt-repository ppa:stebbins/handbrake-releases -y
sudo apt-get update
sudo apt-get install handbrake-cli handbrake-gtk -y

#Inkscape

sudo add-apt-repository ppa:inkscape.dev/stable -y
sudo apt update
sudo apt install inkscape -y

#Signal

sudo apt install curl -y
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update
sudo apt install signal-desktop -y

#Dropbox

echo "deb [arch=i386,amd64] http://linux.dropbox.com/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list.d/dropbox-xenial.list
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt update
sudo apt install dropbox python-gpgme -y

#WPS Office
if [ "$cpuarch" = "x86_64" ];then
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb
sudo dpkg -i wps-office_10.1.0.6757_amd64.deb
sudo mv wps-office_10.1.0.6757_amd64.deb /home/$superuser/Downloads/TempDL/
elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_i386.deb
sudo dpkg -i wps-office_10.1.0.6757_i386.deb
sudo mv wps-office_10.1.0.6757_i386.deb /home/$superuser/Downloads/TempDL/
fi


#Open Office
if [ "$cpuarch" = "x86_64" ];then
sudo apt-get remove libreoffice* openoffice* -y
sudo apt-get autoremove -y
wget -O Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz/download
tar xzvf Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz
sudo dpkg -i en-US/DEBS/*.deb
sudo dpkg -i en-US/DEBS/desktop-integration/*.deb
sudo mv en-US OpenOffice-4.1.6-64bit
sudo mv OpenOffice-4.1.6-64bit /home/$superuser/Downloads/TempDL/
elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
sudo apt-get remove libreoffice* openoffice* -y
sudo apt-get autoremove -y
wget -O Apache_OpenOffice_4.1.6_Linux_x86_install-deb_en-US.tar.gz https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86_install-deb_en-US.tar.gz/download
tar xzvf Apache_OpenOffice_4.1.6_Linux_x86_install-deb_en-US.tar.gz
sudo dpkg -i en-us/DEBS/*.deb
sudo dpkg -i en-US/DEBS/desktop-integration/*.deb
sudo mv OpenOffice-4.1.6-32bit /home/$superuser/Downloads/TempDL/
fi

#MonoDevelop

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt install apt-transport-https -y
echo "deb https://download.mono-project.com/repo/ubuntu vs-xenial main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
sudo apt update
sudo apt install monodevelop -y

# Kodi

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt-get update
sudo apt-get install kodi -y

# Unity 2018.3.0f2(Sadly still at beta on linux)

printf "\nDo you want to install Unity Hub ? Y/N : "
read unitychoose

if [ "$unitychoose" = "Y" ] || [ "$unitychoose" = "y" ];then
wget https://beta.unity3d.com/download/6e9a27477296/UnitySetup-2018.3.0f2
sudo chmod +x UnitySetup-2018.3.0f2
./UnitySetup-2018.3.0f2
sudo updatedb
unitylogopath=`locate Unity-2018.3.0f2/Editor/Data/Resources/LargeUnityIcon.png`
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Unity-2018.3.0f2/Editor/Unity
Name=Unity-2018.3.0f2
Comment=Unity-2018.3.0f2
Icon=$unitylogopath" >> /home/$superuser/Desktop/Unity-2018.3.0f2.desktop
chmod +x /home/$superuser/Desktop/Unity-2018.3.0f2.desktop
sudo mv UnitySetup-2018.3.0f2 /home/$superuser/Downloads/TempDL/

# Unity Hub
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.AppImage
chmod +x UnityHubSetup.AppImage
./UnityHubSetup.AppImage
sudo mv UnityHubSetup.AppImage /home/$superuser/Downloads/TempDL/

# Unreal Engine 4

sudo apt install git -y
git clone git@github.com:EpicGames/UnrealEngine.git
./UnrealEngine/Setup.sh
./UnrealEngine/GenerateProjectFiles.sh
cd UnrealEngine/
sudo make
sudo updatedb
unreallogopath=`locate /UnrealVersionSelector/Private/Linux/Resources/Icon.png`
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/UnrealEngine/Engine/Binaries/Linux/UE4Editor
Name=Unreal Engine
Comment=Unreal Engine
Icon=$unreallogopath" >> /home/$superuser/Desktop/Unreal-Engine-4.desktop
sudo mv UnrealEngine/ /home/$superuser/Downloads/TempDL/

# Krita 4.1.7

wget https://download.kde.org/stable/krita/4.1.7/krita-4.1.7-x86_64.appimage
chmod +x krita-4.1.7-x86_64.appimage

# Kdenlive 18.12.1b

wget -O /home/$superuser/Downloads/TempDL/kdenlive-18.12.1b-x86_64.appimage https://files.kde.org/kdenlive/release/kdenlive-18.12.1b-x86_64.appimage
chmod +x /home/$superuser/Downloads/TempDL/kdenlive-18.12.1b-x86_64.appimage
wget -O /home/$superuser/Downloads/TempDL/kdenlive.png https://cdn.iconverticons.com/files/png/7f088b9c830c6591_256x256.png

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/kdenlive-18.12.1b-x86_64.appimage
Name=Kdenlive
Comment=Kdenlive
Icon=/home/$superuser/Downloads/TempDL/kdenlive.png" >> /home/$superuser/Desktop/kdenlive.desktop
chmod +x /home/$superuser/Desktop/kdenlive.desktop

# Qt
if [ "$cpuarch" = "x86_64" ];then
wget -O /home/$superuser/Downloads/TempDL/qt-unified-linux-x64-online.run http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
chmod +x /home/$superuser/Downloads/TempDL/qt-unified-linux-x64-online.run
sudo sh /home/$superuser/Downloads/TempDL/qt-unified-linux-x64-online.run
sudo updatedb
qtlocation=`locate Qt/Tools/QtCreator/bin/qtcreator | grep -m1 Qt/Tools/QtCreator/bin/qtcreator`
qticon=`locate QtIcon.png`
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=$qtlocation
Name=Qt Creator
Comment=Qt Creator
Icon=$qticon" >> /home/$superuser/Desktop/Qt Creator.desktop
chmod +x /home/$superuser/Desktop/Qt Creator.desktop

elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
wget -O /home/$superuser/Downloads/TempDL/qt-unified-linux-x86-online.run http://download.qt.io/official_releases/online_installers/qt-unified-linux-x86-online.run
chmod +x /home/$superuser/Downloads/TempDL/qt-unified-linux-x86-online.run
sudo sh /home/$superuser/Downloads/TempDL/qt-unified-linux-x86-online.run
sudo updatedb
qtlocation=`locate Qt/Tools/QtCreator/bin/qtcreator | grep -m1 Qt/Tools/QtCreator/bin/qtcreator`
qticon=`locate QtIcon.png`
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=$qtlocation
Name=Qt Creator
Comment=Qt Creator
Icon=$qticon" >> /home/$superuser/Desktop/Qt Creator.desktop
chmod +x /home/$superuser/Desktop/Qt Creator.desktop
fi

# AptanaStudio3
sudo apt install default-jdk -y
sudo apt install libjpeg62 libwebkitgtk-1.0-0 git-core -y
wget -O /home/$superuser/Downloads/TempDL/aptana.studio-linux.gtk.x86_64.zip https://github.com/aptana/studio3/releases/download/3.7.2.201807301111/aptana.studio-linux.gtk.x86_64.zip
unzip -d /home/$superuser/Downloads/TempDL/aptana-studio /home/$superuser/Downloads/TempDL/aptana.studio-linux.gtk.x86_64.zip
chmod +x /home/$superuser/Downloads/TempDL/aptana-studio/AptanaStudio3

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/aptana-studio/AptanaStudio3
Name=AptanaStudio3
Comment=AptanaStudio3
Icon=/home/$superuser/Downloads/TempDL/aptana-studio/icon.xpm" >> /home/$superuser/Desktop/AptanaStudio3.desktop
chmod +x /home/$superuser/Desktop/AptanaStudio3.desktop

# Irssi (PPA)

wget -nv https://download.opensuse.org/repositories/home:ailin_nemui:irssi-test/xUbuntu_16.10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt update
sudo mv Release.key /home/$superuser/Downloads/signing-keys/
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/ailin_nemui:/irssi-test/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/home:ailin_nemui:irssi-test.list"
sudo apt-get update
sudo apt-get install irssi -y

# Clementine (PPA)

sudo add-apt-repository ppa:me-davidsansome/clementine -y
sudo apt-get update
sudo apt install clementine -y