#!/bin/bash
# Variables
cpuarch=`uname -m`
superuser=`getent group sudo | cut -d: -f4`
# Select Which Softwares to be Installed

choice () {
    local choice=$1
    if [[ ${opts[choice]} ]] # toggle
    then
        opts[choice]=
    else
        opts[choice]=+
    fi
}

PS3='Please enter your choice: '
while :
do
clear
options=("PHP7.3 (PPA) ${opts[1]}" "Nginx (PPA) ${opts[2]}" "Apache2 (PPA) ${opts[3]}" "VLC ${opts[4]}" "Visual Studio Code ${opts[5]}" "FFMPEG (PPA) ${opts[6]}" 
"Monitoring Tools ${opts[7]}" "WineHQ Staging ${opts[8]}" "Qbittorrent ${opts[9]}" "Netbeans ${opts[10]}" "Gimp ${opts[11]}" "Nmap 7.70 ${opts[12]}" 
"Skype ${opts[13]}" "Steam ${opts[14]}" "OBS-Studio (PPA) ${opts[15]}" "OpenShot ${opts[16]}" "Oracle VirtualBox 6.0 ${opts[17]}" "Sublime Text 3 ${opts[18]}" 
"Brave (Web Browser) ${opts[19]}" "Tor Browser 8.0.4 ${opts[20]}" "VMware Workstation 15 Pro ${opts[21]}" "Eclipse IDE ${opts[22]}" "Vuze (Bittorrent Client) ${opts[23]}" 
"Utorrent ${opts[24]}" "Deluge ${opts[25]}" "Transmission ${opts[26]}" "MPV ${opts[27]}" "SMPlayer ${opts[28]}" "Kazam ${opts[29]}" "Audocity ${opts[30]}" 
"PlayonLinux ${opts[31]}" "Conky (PPA) ${opts[32]}" "HandBrake (PPA) ${opts[33]}" "Inkscape (PPA) ${opts[34]}" "Signal ${opts[35]}" "Dropbox ${opts[36]}" 
"WPS Office 10.1 ${opts[37]}" "OpenOffice 4.1.6 ${opts[38]}" "MonoDevelop ${opts[39]}" "Kodi (PPA) ${opts[40]}" "Unity 2018.3.0f2 ${opts[41]}" 
"Unreal Engine 4 ${opts[42]}" "Krita 4.1.7 ${opts[43]}" "Kdenlive 18.12.1b ${opts[44]}" "Qt ${opts[45]}" "AptanaStudio3 ${opts[46]}" "Irssi (PPA) ${opts[47]}" 
"Clementine (PPA) ${opts[48]}" "TeamViewer 14 ${opts[49]}" "TeamSpeak 3 ${opts[50]}" "Discord ${opts[51]}" "Android Studio ${opts[52]}" "Geary (PPA) ${opts[53]}" 
"Uget (PPA) ${opts[54]}" "Sayonara (PPA) ${opts[55]}" "Franz 5.0.0-beta-24 (Messaging App) ${opts[56]}" "balenaEtcher ${opts[57]}" "Vivaldi ${opts[58]}" "Spotify ${opts[59]}" 
"Done ${opts[60]}")
    select opt in "${options[@]}"
    do
        case $opt in
            "PHP7.3 (PPA) ${opts[1]}")
                choice 1
                break
                ;;
            "Nginx (PPA) ${opts[2]}")
                choice 2
                break
                ;;
            "Apache2 (PPA) ${opts[3]}")
                choice 3
                break
                ;;
            "VLC ${opts[4]}")
                choice 4
                break
                ;;
            "Visual Studio Code ${opts[5]}")
                choice 5
                break
                ;;
            "FFMPEG (PPA) ${opts[6]}")
                choice 6
                break
                ;;
            "Monitoring Tools ${opts[7]}")
                choice 7
                break
                ;;
            "WineHQ Staging ${opts[8]}")
                choice 8
                break
                ;;
            "Qbittorrent ${opts[9]}")
                choice 9
                break
                ;;
            "Netbeans ${opts[10]}")
                choice 10
                break
                ;;
            "Gimp ${opts[11]}")
                choice 11
                break
                ;;
            "Nmap 7.70 ${opts[12]}")
                choice 12
                break
                ;;
            "Skype ${opts[13]}")
                choice 13
                break
                ;;
            "Steam ${opts[14]}")
                choice 14
                break
                ;;
            "OBS-Studio (PPA) ${opts[15]}")
                choice 15
                break
                ;;
            "OpenShot ${opts[16]}")
                choice 16
                break
                ;;
            "Oracle VirtualBox 6.0 ${opts[17]}")
                choice 17
                break
                ;;
            "Sublime Text 3 ${opts[18]}")
                choice 18
                break
                ;;
            "Brave (Web Browser) ${opts[19]}")
                choice 19
                break
                ;;
            "Tor Browser 8.0.4 ${opts[20]}")
                choice 20
                break
                ;;
            "VMware Workstation 15 Pro ${opts[21]}")
                choice 21
                break
                ;;
            "Eclipse IDE ${opts[22]}")
                choice 22
                break
                ;;
            "Vuze (Bittorrent Client) ${opts[23]}")
                choice 23
                break
                ;;
            "Utorrent ${opts[24]}")
                choice 24
                break
                ;;
            "Deluge ${opts[25]}")
                choice 25
                break
                ;;
            "Transmission ${opts[26]}")
                choice 26
                break
                ;;
            "MPV ${opts[27]}")
                choice 27
                break
                ;;
            "SMPlayer ${opts[28]}")
                choice 28
                break
                ;;
            "Kazam ${opts[29]}")
                choice 29
                break
                ;;
            "Audocity ${opts[30]}")
                choice 30
                break
                ;;
            "PlayonLinux ${opts[31]}")
                choice 31
                break
                ;;
            "Conky (PPA) ${opts[32]}")
                choice 32
                break
                ;;
            "HandBrake (PPA) ${opts[33]}")
                choice 33
                break
                ;;
            "Inkscape (PPA) ${opts[34]}")
                choice 34
                break
                ;;
            "Signal ${opts[35]}")
                choice 35
                break
                ;;
            "Dropbox ${opts[36]}")
                choice 36
                break
                ;;
            "WPS Office 10.1 ${opts[37]}")
                choice 37
                break
                ;;
            "OpenOffice 4.1.6 ${opts[38]}")
                choice 38
                break
                ;;
            "MonoDevelop ${opts[39]}")
                choice 39
                break
                ;;
            "Kodi (PPA  ) ${opts[40]}")
                choice 40
                break
                ;;
            "Unity 2018.3.0f2 ${opts[41]}")
                choice 41
                break
                ;;
            "Unreal Engine 4 ${opts[42]}")
                choice 42
                break
                ;;
            "Krita 4.1.7 ${opts[43]}")
                choice 43
                break
                ;;
            "Kdenlive 18.12.1b ${opts[44]}")
                choice 44
                break
                ;;
            "Qt ${opts[45]}")
                choice 45
                break
                ;;
            "AptanaStudio3 ${opts[46]}")
                choice 46
                break
                ;;
            "Irssi (PPA) ${opts[47]}")
                choice 47
                break
                ;;
            "Clementine (PPA) ${opts[48]}")
                choice 48
                break
                ;;
            "TeamViewer 14 ${opts[49]}")
                choice 49
                break
                ;;
            "TeamSpeak 3 ${opts[50]}")
                choice 50
                break
                ;;
             "Discord ${opts[51]}")
                choice 51
                break
                ;;
            "Android Studio ${opts[52]}")
                choice 52
                break
                ;;
            "Geary (PPA) ${opts[53]}")
                choice 53
                break
                ;;
            "Uget (PPA) ${opts[54]}")
                choice 54
                break
                ;;
            "Sayonara (PPA) ${opts[55]}")
                choice 55
                break
                ;;
           "Franz 5.0.0-beta-24 (Messaging App) ${opts[56]}")
                choice 56
                break
                ;;
            "balenaEtcher ${opts[57]}")
                choice 57
                break
                ;;
            "Vivaldi ${opts[58]}")
                choice 58
                break
                ;;
            "Spotify ${opts[59]}")
                choice 59
                break
                ;;
            "Done ${opts[60]}")
                break 2
                ;;
            *) printf '%s\n' 'Please Choose Between 1-60';;
        esac
    done
done

printf '%s\n\n' 'Options chosen:'
for opt in "${!opts[@]}"
do
    if [[ ${opts[opt]} ]]
    then
        printf '%s\n' "Option $opt"
        fi
done


if [ "$opt" = "4" ] || [ "$opt" = "5" ] || [ "$opt" = "9" ] || [ "$opt" = "10" ] || [ "$opt" = "11" ] || [ "$opt" = "12" ] || [ "$opt" = "13" ] || [ "$opt" = "14" ] || \
 [ "$opt" = "15" ] || [ "$opt" = "16" ] || [ "$opt" = "17" ] || [ "$opt" = "18" ] || [ "$opt" = "19" ] || [ "$opt" = "20" ] || [ "$opt" = "21" ] || [ "$opt" = "22" ] || \
 [ "$opt" = "23" ] || [ "$opt" = "24" ] || [ "$opt" = "25" ] || [ "$opt" = "26" ] || [ "$opt" = "27" ] || [ "$opt" = "28" ] || [ "$opt" = "29" ] || [ "$opt" = "30" ] || \
 [ "$opt" = "31" ] || [ "$opt" = "33" ] || [ "$opt" = "34" ] || [ "$opt" = "35" ] || [ "$opt" = "36" ] || [ "$opt" = "37" ] || [ "$opt" = "38" ] || [ "$opt" = "39" ] || \
 [ "$opt" = "40" ] || [ "$opt" = "41" ] || [ "$opt" = "42" ] || [ "$opt" = "43" ] || [ "$opt" = "44" ] || [ "$opt" = "45" ] || [ "$opt" = "46" ] || [ "$opt" = "48" ] || \
 [ "$opt" = "49" ] || [ "$opt" = "50" ] || [ "$opt" = "51" ] || [ "$opt" = "52" ] || [ "$opt" = "53" ] || [ "$opt" = "54" ] || [ "$opt" = "55" ] || [ "$opt" = "56" ] || \
 [ "$opt" = "57" ] || [ "$opt" = "58" ] || [ "$opt" = "59" ]
then

printf "\nDo You Want to Enable Create Shortcut ? (Y/N):"
read shortcut
fi
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
echo "Shortcut Enabled"
else
echo "Shortcut Disabled"
fi
sleep 1


# Loading Bar

printf "Installation starting"
value=0
while [ $value -lt 600 ]
do
value=$((value+20))
printf "."
sleep 0.05
done
printf "\n"


sudo apt update
sudo apt install wget curl -y
sudo apt install --no-install-recommends gnome-panel -y
printf "\n"

# Signing keys Folder
if [ -d "/home/$superuser/Downloads/signing-keys/" ];then
:
else
mkdir -p /home/$superuser/Downloads/signing-keys/
fi
# Downloaded tmp files
if [ -d "/home/$superuser/Downloads/TempDL/" ];then
:
else
mkdir -p /home/$superuser/Downloads/TempDL/
fi
# Desktop Folder
if [ -d "/home/$superuser/Destkop/" ];then
:
else
mkdir -p /home/$superuser/Desktop/
fi
#Virtualbox
vboxversion=$(wget -qO - https://download.virtualbox.org/virtualbox/LATEST.TXT)

# INSTALLATION BY SELECTION
# 1) PHP 7.3
case $opt in
1)
sudo apt install -y python-software-properties
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y php7.3 php7.3-w php7.3-fpm php7.3-pdo php7.3-mysql php7.3-curl php7.3-gd php7.3-mbstring
printf "\nPhp installation Has Finished\n\n"
;;

# 2- Nginx (PPA)
2)

#NGINX 

echo " 

#NGINX

deb http://nginx.org/packages/ubuntu/ xenial nginx
deb-src http://nginx.org/packages/ubuntu/ xenial nginx" >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
sudo apt update
sudo apt install nginx -y
printf "\nNginx installation Has Finished\n\n"
;;


# 3- Apache2 (PPA)
3)
sudo add-apt-repository ppa:ondrej/apache2 -y
sudo apt update
sudo apt install apache2 -y
printf "\nApache2 installation Has Finished\n\n"
;;

4) # VLC

snap install vlc
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/snap/bin/vlc
Name=VLC
Comment=VLC
Icon=/snap/vlc/770/usr/share/icon/hicolor/256x256/apps/vlc.png" >> /home/$superuser/Desktop/vlc.desktop
sudo chmod +x /home/$superuser/vlc.desktop
else
:
fi
printf "\nVLC installation Has Finished\n\n"
;;

5) # Visual Studio Code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Desktop/Visual Studio Code
Name=Visual Studio Code
Comment=Visual Studio Code
Icon=/usr/share/code/resources/app/resources/linux/code.png" >> /home/$superuser/Desktop/visual-studio-code.desktop
sudo chmod +x /home/$superuser/Desktop/visual-studio-code.desktop
else
:
fi
printf "\nVisual Studio Code installation Has Finished\n\n"
;;

6) #FFMPEG (PPA)

sudo add-apt-repository ppa:jonathonf/ffmpeg-4 -y
sudo apt update
sudo apt install ffmpeg -y
printf "\nFfmpeg installation Has Finished"
;;

7) #Monitoring Tools

sudo apt install htop iftop atop glances monit powertop iotop apachetop -y
printf "\nMonitoring Tools installation Has Finished\n\n"
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
sudo mv winehq.key /home/$superuser/Downloads/signing-keys/
fi
printf "\nWineHQ installation Has Finished\n\n"
;;

9) # Qbittorrent

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update 
sudo apt install qbittorrent -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/qbittorrent
Name=Qbittorrent
Comment=Qbittorrent
Icon=/usr/share/icons/hicolor/192x192/qbittorrent.png" >> /home/$superuser/Desktop/qbittorrent.desktop
sudo chmod +x /home/$superuser/qbittorrent.desktop
else
:
fi
printf "\nQbittorrent installation Has Finished\n\n"
;;

10) # NetBeans

wget https://www-eu.apache.org/dist/incubator/netbeans/incubating-netbeans/incubating-10.0/incubating-netbeans-10.0-bin.zip
unzip incubating-netbeans-10.0-bin.zip -d /home/$superuser/Downloads/TempDL/
sudo apt install default-jdk -y
sudo mv incubating-netbeans-10.0-bin.zip /home/$superuser/Downloads/TempDL/
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/netbeans/bin/netbeans
Name=Netbeans
Comment=Netbeans
Icon=/home/$superuser/Downloads/TempDL/netbeans/nb/netbeans.icns" >> /home/$superuser/Desktop/Netbeans.desktop
sudo chmod +x /home/$superuser/Desktop/Netbeans.desktop
else
:
fi
printf "\nNetBeans installation Has Finished\n\n"
;;

11) # Gimp 2.10

sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt update
sudo apt install flatpak -y
wget https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref -y
sudo mv org.gimp.GIMP.flatpakref /home/$superuser/Downloads/TempDL/
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/netbeans/bin/netbeans
Name=Netbeans
Comment=Netbeans
Icon=/home/$superuser/Downloads/TempDL/netbeans/nb/netbeans.icns" >> /home/$superuser/Desktop/Netbeans.desktop
sudo chmod +x /home/$superuser/Desktop/Netbeans.desktop
else
:
fi
printf "\nGimp installation Has Finished\n\n"
;;

12) # Nmap
if [ "$cpuarch" = "x86_64" ];then
sudo apt install alien -y
wget -O /home/$superuser/Downloads/TempDL/nmap-7.70-1.x86_64.rpm https://nmap.org/dist/nmap-7.70-1.x86_64.rpm
sudo alien /home/$superuser/Downloads/TempDL/nmap-7.70-1.x86_64.rpm
sudo dpkg --install /home/$superuser/Downloads/TempDL/nmap_7.70-2_amd64.deb
wget -O /home/$superuser/Downloads/TempDL/nmap.png https://www.macupdate.com/images/icons256/36710.png


elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then

sudo apt install alien -y
wget -O /home/$superuser/Downloads/TempDL/nmap-7.70-1.i686.rpm https://nmap.org/dist/nmap-7.70-1.i686.rpm
sudo alien /home/$superuser/Downloads/TempDL/nmap-7.70-1.i686.rpm
sudo dpkg --install /home/$superuser/Downloads/TempDL/nmap_7.70-2_i386.deb
wget -O /home/$superuser/Downloads/TempDL/nmap.png https://www.macupdate.com/images/icons256/36710.png

fi

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/nmap
Name=Nmap
Comment=Nmap
Icon=/home/$superuser/Downloads/TempDL/nmap.png" >> /home/$superuser/Desktop/nmap.desktop
sudo chmod +x /home/$superuser/Desktop/nmap.desktop
else
:
fi
printf "\nGimp installation Has Finished\n\n"
;;

13) # Skype

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/opt/skypeforlinux
Name=Skype
Comment=Skype
Icon=/usr/share/icons/hicolor/256x256/apps/skypeforlinux.png" >> /home/$superuser/Desktop/skype.desktop
sudo chmod +x /home/$superuser/Desktop/skype.desktop
else
:
fi
printf "\nSkype installation Has Finished\n\n"
;;

14) # Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/steam
Name=Steam
Comment=Steam
Icon=/usr/share/icons/hicolor/256x256/apps/steam.png" >> /home/$superuser/Desktop/steam.desktop
sudo chmod +x /home/$superuser/Desktop/steam.desktop
else
:
fi
printf "\nSteam installation Has Finished\n\n"
;;

15) # OBS-studio

sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt install obs-studio -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/obs
Name=OBS-Studio
Comment=OBS-Studio
Icon=/usr/share/icons/hicolor/256x256/apps/obs.png" >> /home/$superuser/Desktop/obs.desktop
sudo chmod +x /home/$superuser/Desktop/obs.desktop
else
:
fi
printf "\nOBS-Studio installation Has Finished\n\n"
;;

16) # OpenShot
sudo add-apt-repository ppa:openshot.developers/ppa -y
sudo apt update
sudo apt install openshot-qt -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/openshot-qt
Name=Openshot
Comment=Openshot
Icon=/usr/share/icons/hicolor/256/apps/openshot-qt.png" >> /home/$superuser/Desktop/openshot.desktop
sudo chmod +x /home/$superuser/Desktop/openshot.desktop
else
:
fi
printf "\nOpenShot installation Has Finished\n\n"
;;

17) #Oracle VirtualBox 6.0 (With Extension Pack)

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install linux-headers-$(uname -r) dkms -y
sudo apt install virtualbox-6.0 -y
wget -O /home/$superuser/Downloads/TempDL/Oracle_VM_VirtualBox_Extension_Pack-Latest.vbox-extpack "https://download.virtualbox.org/virtualbox/${vboxversion}/Oracle_VM_VirtualBox_Extension_Pack-${vboxversion}.vbox-extpack"
echo "y" | sudo vboxmanage extpack install --replace /home/$superuser/Downloads/TempDL/Oracle_VM_VirtualBox_Extension_Pack-Latest.vbox-extpack
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/virtualbox
Name=Oracle VM VirtualBox
Comment=Oracle VM VirtualBox
Icon=/usr/share/icons/hicolor/64x64/apps/virtualbox.png" >> /home/$superuser/Desktop/virtualbox.desktop
sudo chmod +x /home/$superuser/Desktop/virtualbox.desktop
else
:
fi
printf "\nVirtualBox installation Has Finished\n\n"
;;

18) #Sublime Text 3

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/subl
Name=Sublime Text 3
Comment=Sublime Text 3
Icon=/usr/share/icons/hicolor/256x256/apps/sublime-text.png" >> /home/$superuser/Desktop/sublime-text.desktop
sudo chmod +x /home/$superuser/Desktop/sublime-text.desktop
else
:
fi
printf "\nSublime Text 3 installation Has Finished\n\n"
;;

19) # Brave Web Browser

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ `lsb_release -sc` main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-`lsb_release -sc`.list
sudo apt update
sudo apt install brave-browser brave-keyring -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/brave-browser
Name=Brave
Comment=Brave
Icon=/usr/share/icons/hicolor/256x256/apps/brave-browser.png" >> /home/$superuser/Desktop/brave-browser.desktop
sudo chmod +x /home/$superuser/Desktop/brave-browser.desktop
else
:
fi
printf "\nBrave Web Browser installation Has Finished\n\n"
;;

20) # Tor Browser 8.0.4
if [ "$cpuarch" = "x86_64" ];then

wget -O /home/$superuser/Downloads/TempDL/tor-browser-linux64-8.0.4_en-US.tar.xz https://www.torproject.org/dist/torbrowser/8.0.4/tor-browser-linux64-8.0.4_en-US.tar.xz
tar xvJf /home/$superuser/Downloads/TempDL/tor-browser-linux64-8.0.4_en-US.tar.xz

elif [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i686" ];then
wget -O /home/$superuser/Downloads/TempDL/tor-browser-linux32-8.0.4_en-US.tar.xz  https://www.torproject.org/dist/torbrowser/8.0.4/tor-browser-linux32-8.0.4_en-US.tar.xz
tar xvJf /home/$superuser/Downloads/TempDL/tor-browser-linux32-8.0.4_en-US.tar.xz
fi
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/tor-browser_en-US/start-tor-browser.desktop
Name=Tor Browser
Comment=Tor Browser
Icon=/home/$superuser/Downloads/TempDL/tor-browser_en-US/Browser/browser/chrome/icons/default64.png" >> /home/$superuser/Desktop/tor-browser.desktop
sudo chmod +x /home/$superuser/Desktop/tor-browser.desktop
else
:
fi
printf "\nBrave Web Browser installation Has Finished\n\n"
;;

21) #VMware Workstation 15 Pro

wget -O /home/$superuser/Downloads/TempDL/VMware-Workstation-15-Pro.bundle https://www.vmware.com/go/getworkstation-linux
sudo apt install gcc build-essential linux-headers-$(uname -r) -y
sudo bash /home/$superuser/Downloads/TempDL/VMware-Workstation-15-Pro.bundle
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/vmware
Name=VMware Workstation 15 Pro
Comment=VMware Workstation 15 Pro
Icon=/usr/share/icons/hicolor/256x256/apps/vmware-workstation.png" >> /home/$superuser/Desktop/vmware-workstation.desktop
sudo chmod +x /home/$superuser/Desktop/vmware-workstation.desktop
else
:
fi
printf "\nVMware Workstation 15 Pro installation Has Finished\n\n"
;;

22) # Eclipse IDE

sudo add-apt-repository ppa:lyzardking/ubuntu-make -y
sudo apt update
sudo apt install ubuntu-make -y

printf "\n"

echo "1-) Eclipse IDE for Java Developers"
echo "2-) Eclipse IDE for Java Enterprise edition Developers"
echo "3-) Eclipse IDE for C/C++ Developer"
echo "4-) Eclipse for PHP Developers"
printf "\nSelect which Eclipse Package Do you Want to install: "
read eclipsechoose

case $eclipsechoose in
1) # Eclipse IDE for Java Developers

umake ide eclipse
printf "\nEclipse installation Has Finished"
;;

2) #Eclipse IDE for Java Enterprise edition Developers

umake ide eclipse-jee
printf "\nEclipse Java installation Has Finished"
;;

3) #Eclipse IDE for C/C++ Developer

umake ide eclipse-cpp
printf "\nEclipse C++ installation Has Finished"
;;

4) # Eclipse for PHP Developers

umake ide eclipse-php
printf "\nEclipse Php installation Has Finished"
;;
esac
printf "\nEclipse installation Has Finished\n\n"
;;

23) #Vuze (Bittorrent Client)

sudo snap install vuze-vs
printf "\nVuze installation Has Finished\n\n"
;;

24) #Utorrent

sudo snap install utorrent
printf "\nUtorrent installation Has Finished\n\n"
;;

25) #Deluge

sudo apt install python-software-properties -y
sudo add-apt-repository ppa:deluge-team/ppa -y
sudo apt update
sudo apt install deluge -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/deluge
Name=Deluge
Comment=Deluge
Icon=/usr/share/icons/hicolor/256x256/apps/deluge.png" >> /home/$superuser/Desktop/deluge.desktop
sudo chmod +x /home/$superuser/Desktop/deluge.desktop
else
:
fi
printf "\nDeluge installation Has Finished\n\n"
;;

26) #Transmission
sudo add-apt-repository ppa:transmissionbt/ppa -y
sudo apt update
sudo apt install transmission transmission-cli transmission-common transmission-daemon -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/transmission-cli
Name=Transmission
Comment=Transmission
Icon=/usr/share/icons/hicolor/256x256/apps/transmission.png" >> /home/$superuser/Desktop/transmission.desktop
sudo chmod +x /home/$superuser/Desktop/transmission.desktop
else
:
fi
printf "\nTransmission installation Has Finished\n\n"
;;

27) #MPV

sudo add-apt-repository ppa:mc3man/mpv-tests -y
sudo apt update
sudo apt install mpv -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/mpv
Name=MPV
Comment=MPV
Icon=/usr/share/icons/hicolor/64x64/apps/mpv.png" >> /home/$superuser/Desktop/mpv.desktop
sudo chmod +x /home/$superuser/Desktop/mpv.desktop
else
:
fi
printf "\nMPV installation Has Finished\n\n"
;;

28) #SMPlayer

sudo add-apt-repository ppa:rvm/smplayer -y
sudo apt update
sudo apt install smplayer smplayer-themes smplayer-skins -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/smplayer
Name=Smplayer
Comment=Smplayer
Icon=/usr/share/icons/hicolor/256x256/apps/smplayer.png" >> /home/$superuser/Desktop/smplayer.desktop
sudo chmod +x /home/$superuser/Desktop/smplayer.desktop
else
:
fi
printf "\nSMPlayer installation Has Finished\n\n"
;;

29) # Kazam
sudo add-apt-repository ppa:sylvain-pineau/kazam -y
sudo apt update
sudo apt install kazam -y
sudo apt install python3-cairo python3-xlib -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/kazam
Name=Smplayer
Comment=Smplayer
Icon=/usr/share/icons/hicolor/64x64/apps/kazam.png" >> /home/$superuser/Desktop/kazam.desktop
sudo chmod +x /home/$superuser/Desktop/kazam.desktop
else
:
fi
printf "\nKazam installation Has Finished\n\n"
;;

30) # Audocity

sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y
sudo apt update
sudo apt install audacity -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/audacity
Name=Audacity
Comment=Audacity
Icon=/usr/share/icons/hicolor/48x48/apps/audacity.png" >> /home/$superuser/Desktop/audacity.desktop
sudo chmod +x /home/$superuser/Desktop/audacity.desktop
else
:
fi
printf "\nAudocity installation Has Finished\n\n"
;;
31) # PlayonLinux

wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_xenial.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt update
sudo apt install playonlinux -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/playonlinux
Name=Playonlinux
Comment=Playonlinux
Icon=/usr/share/playonlinux/resources/images/setups/top.png" >> /home/$superuser/Desktop/playonlinux.desktop
sudo chmod +x /home/$superuser/Desktop/playonlinux.desktop
else
:
fi
printf "\nPlayonlinux installation Has Finished\n\n"
;;

32) #Conky

sudo apt install conky-all -y
sudo apt-add-repository ppa:teejee2008/ppa -y
sudo apt update
sudo apt install conky-manager -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/conky-manager
Name=Conky-Manager
Comment=Conky-Manager
Icon=/usr/share/conky-manager/images/conky-manager.png" >> /home/$superuser/Desktop/conky-manager.desktop
sudo chmod +x /home/$superuser/Desktop/conky-manager.desktop
else
:
fi
printf "\nConky installation Has Finished\n\n"
;;

33) #HandBrake

sudo add-apt-repository ppa:stebbins/handbrake-releases -y
sudo apt update
sudo apt install handbrake-cli handbrake-gtk -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/ghb
Name=HandBrake
Comment=HandBrake
Icon=/usr/share/icons/hicolor/scalable/apps/fr.handbrake.ghb.svg" >> /home/$superuser/Desktop/handbrake.desktop
sudo chmod +x /home/$superuser/Desktop/handbrake.desktop
else
:
fi
printf "\nHandBrake installation Has Finished\n\n"
;;
34) #Inkscape

sudo add-apt-repository ppa:inkscape.dev/stable -y
sudo apt update
sudo apt install inkscape -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/inkscape
Name=Inkscape
Comment=Inkscape
Icon=/usr/share/inkscape/icons/inkscape.svg" >> /home/$superuser/Desktop/inkscape.desktop
sudo chmod +x /home/$superuser/Desktop/inkscape.desktop
else
:
fi
printf "\nInkscape installation Has Finished\n\n"
;;

35) #Signal

sudo apt install curl -y
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update
sudo apt install signal-desktop -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/opt/Signal/signal-desktop
Name=Signal-Desktop
Comment=Signal-Desktop
Icon=/usr/share/icons/hicolor/256x256/apps/signal-desktop.png" >> /home/$superuser/Desktop/signal-desktop.desktop
sudo chmod +x /home/$superuser/Desktop/signal-desktop.desktop
else
:
fi
printf "\nSignal installation Has Finished\n\n"
;;

36) #Dropbox

echo "deb [arch=i386,amd64] http://linux.dropbox.com/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list.d/dropbox-xenial.list
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt update
sudo apt install dropbox python-gpgme -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/dropbox
Name=Dropbox
Comment=Dropbox
Icon=/usr/share/icons/hicolor/256x256/apps/dropbox.png" >> /home/$superuser/Desktop/dropbox.desktop
sudo chmod +x /home/$superuser/Desktop/dropbox.desktop
else
:
fi
printf "\nDropbox installation Has Finished\n\n"
;;

37) #WPS Office
if [ "$cpuarch" = "x86_64" ];then
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb
sudo dpkg -i wps-office_10.1.0.6757_amd64.deb
sudo mv wps-office_10.1.0.6757_amd64.deb /home/$superuser/Downloads/TempDL/
elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_i386.deb
sudo dpkg -i wps-office_10.1.0.6757_i386.deb
sudo mv wps-office_10.1.0.6757_i386.deb /home/$superuser/Downloads/TempDL/
fi

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/wps
Name=WPS Office
Comment=wPS Office
Icon=/usr/share/icons/hicolor/256x256/apps/wps-office-wpsmain.png" >> /home/$superuser/Desktop/wps-office.desktop
sudo chmod +x /home/$superuser/Desktop/wps-office.desktop
else
:
fi
printf "\nWPS Office installation Has Finished\n\n"
;;

38) #Open Office
printf "\nOPENOFFICE NEEDS TO REMOVE THE LIBREOFFICE BEFORE INSTALLING IT, DO YOU CONFIRM (Y/N): "
read openofficeverify
if [ "$openofficeverify" = "Y" ] || [ "$openofficeverify" = "y" ];then
:
elif [ "$openofficeverify" = "N" ] || [ "$openofficeverify" = "n" ];then
exit

fi
if [ "$cpuarch" = "x86_64" ];then
sudo apt remove libreoffice* openoffice* -y
sudo apt autoremove -y
wget -O Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz/download
tar xzvf Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz
sudo dpkg -i en-US/DEBS/*.deb
sudo dpkg -i en-US/DEBS/desktop-integration/*.deb
sudo mv en-US OpenOffice-4.1.6-64bit
sudo mv OpenOffice-4.1.6-64bit /home/$superuser/Downloads/TempDL/
elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
sudo apt remove libreoffice* openoffice* -y
sudo apt autoremove -y
wget -O Apache_OpenOffice_4.1.6_Linux_x86_install-deb_en-US.tar.gz https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86_install-deb_en-US.tar.gz/download
tar xzvf Apache_OpenOffice_4.1.6_Linux_x86_install-deb_en-US.tar.gz
sudo dpkg -i en-us/DEBS/*.deb
sudo dpkg -i en-US/DEBS/desktop-integration/*.deb
sudo mv OpenOffice-4.1.6-32bit /home/$superuser/Downloads/TempDL/
fi

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/openoffice4
Name=Open Office
Comment=Open Office
Icon=/usr/share/icons/hicolor/128x128/apps/openoffice4-main.png" >> /home/$superuser/Desktop/open-office.desktop
sudo chmod +x /home/$superuser/Desktop/open-office.desktop
else
:
fi
printf "\nOpen Office installation Has Finished\n\n"
;;

39) # MonoDevelop

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt install apt-transport-https -y
echo "deb https://download.mono-project.com/repo/ubuntu vs-xenial main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
sudo apt update
sudo apt install monodevelop -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/monodevelop
Name=MonoDevelop
Comment=MonoDevelop
Icon=/usr/share/icons/hicolor/256x256/apps/monodevelop.png" >> /home/$superuser/Desktop/monodevelop.desktop
sudo chmod +x /home/$superuser/Desktop/monodevelop.desktop
else
:
fi
printf "\nMonoDevelop installation Has Finished\n\n"
;;

40) # Kodi

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt update
sudo apt install kodi -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/kodi
Name=Kodi
Comment=Kodi
Icon=/usr/share/icons/hicolor/256x256/apps/kodi.png" >> /home/$superuser/Desktop/kodi.desktop
sudo chmod +x /home/$superuser/Desktop/kodi.desktop
else
:
fi
printf "\nKodi installation Has Finished"
;;

41) # Unity 2018.3.0f2(Sadly still at beta on linux)

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
sudo chmod +x /home/$superuser/Desktop/Unity-2018.3.0f2.desktop
sudo mv UnitySetup-2018.3.0f2 /home/$superuser/Downloads/TempDL/

# Unity Hub
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.AppImage
sudo chmod +x UnityHubSetup.AppImage
./UnityHubSetup.AppImage
sudo mv UnityHubSetup.AppImage /home/$superuser/Downloads/TempDL/

elif [ "$unitychoose" = "N" ] || [ "$unitychoose" = "n" ];then

wget https://beta.unity3d.com/download/6e9a27477296/UnitySetup-2018.3.0f2
sudo chmod +x UnitySetup-2018.3.0f2
./UnitySetup-2018.3.0f2
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Unity-2018.3.0f2/Editor/Unity
Name=Unity-2018.3.0f2
Comment=Unity-2018.3.0f2
Icon=$unitylogopath" >> /home/$superuser/Desktop/Unity-2018.3.0f2.desktop
sudo chmod +x /home/$superuser/Desktop/Unity-2018.3.0f2.desktop
sudo mv UnitySetup-2018.3.0f2 /home/$superuser/Downloads/TempDL/

fi
printf "\nUnity installation Has Finished\n\n"
;;

42) # Unreal Engine 4

sudo apt install git -y
git clone git@github.com:EpicGames/UnrealEngine.git
./UnrealEngine/Setup.sh
./UnrealEngine/GenerateProjectFiles.sh
cd UnrealEngine/
sudo make
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
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
else
:
fi
printf "\nUnreal Engine 4 installation Has Finished\n\n"
;;

43) # Krita 4.1.7

wget https://download.kde.org/stable/krita/4.1.7/krita-4.1.7-x86_64.appimage
sudo mv krita-4.1.7-x86_64.appimage /home/$superuser/Downloads/TempDL/
chmod +x /home/$superuser/Downloads/TempDL/krita-4.1.7-x86_64.appimage
wget -O /home/$superuser/Downloads/TempDL/krita.png https://www.macupdate.com/images/icons256/57212.png
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/Krita
Name=Krita
Comment=Krita
Icon=/home/$superuser/Downloads/TempDL/krita.png" >> /home/$superuser/Desktop/Krita.desktop
sudo chmod +x /home/$superuser/Desktop/krita.desktop
else
:
fi
printf "\nKrita installation Has Finished\n\n"
;;

44) # Kdenlive 18.12.1b

wget -O /home/$superuser/Downloads/TempDL/kdenlive-18.12.1b-x86_64.appimage https://files.kde.org/kdenlive/release/kdenlive-18.12.1b-x86_64.appimage
chmod +x /home/$superuser/Downloads/TempDL/kdenlive-18.12.1b-x86_64.appimage
wget -O /home/$superuser/Downloads/TempDL/kdenlive.png https://cdn.iconverticons.com/files/png/7f088b9c830c6591_256x256.png
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/kdenlive-18.12.1b-x86_64.appimage
Name=Kdenlive
Comment=Kdenlive
Icon=/home/$superuser/Downloads/TempDL/kdenlive.png" >> /home/$superuser/Desktop/kdenlive.desktop
sudo chmod +x /home/$superuser/Desktop/kdenlive.desktop
else
:
fi
printf "\nKdenlive installation Has Finished\n\n"
;;

45) # Qt
if [ "$cpuarch" = "x86_64" ];then
wget -O /home/$superuser/Downloads/TempDL/qt-unified-linux-x64-online.run http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
chmod +x /home/$superuser/Downloads/TempDL/qt-unified-linux-x64-online.run
sudo sh /home/$superuser/Downloads/TempDL/qt-unified-linux-x64-online.run
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
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
sudo chmod +x /home/$superuser/Desktop/Qt Creator.desktop
else
:
fi

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
sudo chmod +x /home/$superuser/Desktop/Qt Creator.desktop
fi
printf "\nQt installation Has Finished\n\n"
;;

46) # AptanaStudio3
sudo apt install default-jdk -y
sudo apt install libjpeg62 libwebkitgtk-1.0-0 git-core -y
wget -O /home/$superuser/Downloads/TempDL/aptana.studio-linux.gtk.x86_64.zip https://github.com/aptana/studio3/releases/download/3.7.2.201807301111/aptana.studio-linux.gtk.x86_64.zip
unzip -d /home/$superuser/Downloads/TempDL/aptana-studio /home/$superuser/Downloads/TempDL/aptana.studio-linux.gtk.x86_64.zip
chmod +x /home/$superuser/Downloads/TempDL/aptana-studio/AptanaStudio3
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/home/$superuser/Downloads/TempDL/aptana-studio/AptanaStudio3
Name=AptanaStudio3
Comment=AptanaStudio3
Icon=/home/$superuser/Downloads/TempDL/aptana-studio/icon.xpm" >> /home/$superuser/Desktop/AptanaStudio3.desktop
sudo chmod +x /home/$superuser/Desktop/AptanaStudio3.desktop
else
:
fi
printf "\nAptanaStudio3 installation Has Finished\n\n"
;;

47) # Irssi (PPA)

wget -nv https://download.opensuse.org/repositories/home:ailin_nemui:irssi-test/xUbuntu_16.10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt update
sudo mv Release.key /home/$superuser/Downloads/signing-keys/
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/ailin_nemui:/irssi-test/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/home:ailin_nemui:irssi-test.list"
sudo apt update
sudo apt install irssi -y
wget -O /home/$superuser/Downloads/TempDL/irssi-logo.png https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Irssi_logo.svg/2000px-Irssi_logo.svg.png
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/irssi
Name=Irssi
Comment=Irssi
Icon=/home/$superuser/Downloads/TempDL/irssi-logo.png" >> /home/$superuser/Desktop/irssi.desktop
sudo chmod +x /home/$superuser/Desktop/irssi.desktop
else
:
fi
printf "\nIrssi installation Has Finished\n\n"
;;


48) # Clementine (PPA)

sudo add-apt-repository ppa:me-davidsansome/clementine -y
sudo apt update
sudo apt install clementine -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/clementine
Name=Clementine
Comment=Clementine
Icon=/usr/share/icons/hicolor/128x128/apps/clementine.png" >> /home/$superuser/Desktop/clementine.desktop
sudo chmod +x /home/$superuser/Desktop/clementine.desktop
else
:
fi
printf "\nClementine installation Has Finished\n\n"
;;

49) # TeamViewer 14

if [ "$cpuarch" = "x86_64" ];then
wget -O /home/$superuser/Downloads/TempDL/teamviewer_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i /home/$superuser/Downloads/TempDL/teamviewer_amd64.deb
sudo apt -f install -y

elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
wget -O /home/$superuser/Downloads/TempDL/teamviewer_i386.deb https://download.teamviewer.com/download/linux/teamviewer_i386.deb
sudo dpkg -i /home/$superuser/Downloads/TempDL/teamviewer_i386.deb
sudo apt -f install -y
fi

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/teamviewer
Name=Teamviewer 14
Comment=Teamviewer 14
Icon=/opt/teamviewer/tv_bin/desktop/teamviewer_48.png" >> /home/$superuser/Desktop/teamviewer.desktop
sudo chmod +x /home/$superuser/Desktop/teamviewer.desktop
else
:
fi
printf "\nTeamViewer 14 installation Has Finished\n\n"
;;

50) # TeamSpeak 3

wget -O /home/$superuser/Downloads/TempDL/ts-stacked-bluelight.zip https://www.teamspeak.com/downloads/media-pack/png/ts-stacked-bluelight.zip
unzip /home/$superuser/Downloads/TempDL/ts-stacked-bluelight.zip -d /home/$superuser/Downloads/TempDL/

if [ "$cpuarch" = "x86_64" ];then
wget -O /home/$superuser/Downloads/TempDL/TeamSpeak3-Client-linux_amd64-3.2.3.run https://files.teamspeak-services.com/releases/client/3.2.3/TeamSpeak3-Client-linux_amd64-3.2.3.run
sudo chmod +x /home/$superuser/Downloads/TempDL/TeamSpeak3-Client-linux_amd64-3.2.3.run
sudo bash /home/$superuser/Downloads/TempDL/TeamSpeak3-Client-linux_amd64-3.2.3.run
sudo chown -R $superuser:$superuser TeamSpeak3-Client-linux_amd64/
sudo mv TeamSpeak3-Client-linux_amd64/ /home/$superuser/Downloads/TempDL/
fi

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
teamspeaklocation=`locate ts3client_runscript`
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=$teamspeaklocation
Name=TeamSpeak 3
Comment=TeamSpeak 3
Icon=/home/$superuser/Downloads/TempDL/ts_stacked_bluelight.png" >> /home/$superuser/Desktop/teamspeak.desktop
sudo chmod +x /home/$superuser/Desktop/teamspeak.desktop
else
:
fi

if [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
wget -O /home/$superuser/Downloads/TempDL/TeamSpeak3-Client-linux_x86-3.2.3.run https://files.teamspeak-services.com/releases/client/3.2.3/TeamSpeak3-Client-linux_x86-3.2.3.run
sudo chmod +x /home/$superuser/Downloads/TempDL/TeamSpeak3-Client-linux_x86-3.2.3.run
sudo bash /home/$superuser/Downloads/TempDL/TeamSpeak3-Client-linux_x86-3.2.3.run
sudo chown -R $superuser:$superuser TeamSpeak3-Client-linux_x86/
sudo mv TeamSpeak3-Client-linux_x86/ /home/$superuser/Downloads/TempDL/
fi

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
teamspeaklocation=`locate ts3client_runscript`
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=$teamspeaklocation
Name=TeamSpeak 3
Comment=TeamSpeak 3
Icon=/home/$superuser/Downloads/TempDL/ts_stacked_bluelight.png" >> /home/$superuser/Desktop/teamspeak.desktop
sudo chmod +x /home/$superuser/Desktop/teamspeak.desktop
else
:
fi
printf "\nTeamSpeak 3 installation Has Finished\n\n"
;;

51) # Discord
wget -O /home/$superuser/Downloads/TempDL/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /home/$superuser/Downloads/TempDL/discord.deb
sudo apt -f install -y

if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/discord
Name=Discord
Comment=Discord
Icon=/usr/share/discord/discord.png" >> /home/$superuser/Desktop/discord.desktop
sudo chmod +x /home/$superuser/Desktop/discord.desktop
else
:
fi
printf "\nDiscord installation Has Finished\n\n"
;;

52) # Android Studio
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt update
sudo apt install java-common oracle-java8-installer -y
sudo apt-add-repository ppa:maarten-fonville/android-studio -y
sudo apt update 
sudo apt-get install android-studio -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/opt/android-studio/bin/studio.sh
Name=Android Studio
Comment=Android Studio
Icon=/opt/android-studio/bin/studio.png" >> /home/$superuser/Desktop/android-studio.desktop
sudo chmod +x /home/$superuser/Desktop/android-studio.desktop
else
:
fi
printf "\nAndroid Studio installation Has Finished\n\n"
;;


53) # Geary (PPA)

sudo add-apt-repository ppa:geary-team/releases -y
sudo apt update
sudo apt install geary -y
wget -O /home/$superuser/Downloads/TempDL/geary.png https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geary.svg/1200px-Geary.svg.png
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/geary
Name=Geary
Comment=Geary
Icon=/home/$superuser/Downloads/TempDL/geary.png" >> /home/$superuser/Desktop/geary.desktop
chmod +x /home/$superuser/Desktop/geary.desktop
else
:
fi
printf "\nGeary installation Has Finished"
;;

54) # uGet (PPA)
if [ "$cpuarch" = "x86_64" ];then
wget -O /home/$superuser/Downloads/TempDL/ubuntu-64-xenial-download https://ugetdm.com/go/ubuntu-64-xenial-download
sudo dpkg -i /home/$superuser/Downloads/TempDL/ubuntu-64-xenial-download
elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
wget -O /home/$superuser/Downloads/TempDL/ubuntu-32-xenial-download https://ugetdm.com/go/ubuntu-32-xenial-download
sudo dpkg -i /home/$superuser/Downloads/TempDL/ubuntu-32-xenial-download
fi
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/uget-gtk
Name=uGet
Comment=uGet
Icon=/usr/share/icons/hicolor/128x128/apps/uget-icon.png" >> /home/$superuser/Desktop/uget.desktop
chmod +x /home/$superuser/Desktop/uget.desktop
else
:
fi
printf "\nuGet installation Has Finished"
;;

55) # Sayonara Player (PPA)

sudo apt-add-repository ppa:lucioc/sayonara -y
sudo apt update
sudo apt install sayonara -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/sayonara
Name=Sayonara
Comment=Sayonara
Icon=/usr/share/icons/hicolor/128x128/apps/sayonara.png" >> /home/$superuser/Desktop/sayonara.desktop
chmod +x /home/$superuser/Desktop/sayonara.desktop
else
:
fi
printf "\nSayonara Player installation Has Finished"
;;

56) # Franz 5.0.0-beta-24 (Messaging App)
if [ "$cpuarch" = "x86_64" ];then
wget -O /home/$superuser/Downloads/TempDL/franz_5.0.0-beta.24_amd64.deb https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.24/franz_5.0.0-beta.24_amd64.deb
sudo dpkg -i /home/$superuser/Downloads/TempDL/franz_5.0.0-beta.24_amd64.deb
elif [ "$cpuarch" = "x86" ] || [ "$cpuarch" = "i386" ] || [ "$cpuarch" = "i486" ] || [ "$cpuarch" = "i586" ] || [ "$cpuarch" = "i686" ];then
printf "\nOnly 64 Bit Processors Supported"
sleep 1
fi
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/local/bin/franz
Name=Franz
Comment=Franz
Icon=/usr/share/icons/hicolor/128x128/apps/franz.png" >> /home/$superuser/Desktop/franz.desktop
chmod +x /home/$superuser/Desktop/franz.desktop
else
:
fi
printf "\nFranz installation Has Finished"
;;

57) # balenaEtcher
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt update
sudo apt install balena-etcher-electron -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/local/bin/balena-etcher-electron
Name=balenaEtcher
Comment=balenaEtcher
Icon=/usr/share/icons/hicolor/128x128/apps/balena-etcher-electron.png" >> /home/$superuser/Desktop/balena-etcher.desktop
chmod +x /home/$superuser/Desktop/balena-etcher.desktop
else
:
fi
printf "\nbalenaEtcher installation Has Finished"
;;

58) # Vivaldi
echo "deb http://repo.vivaldi.com/stable/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list > /dev/null
wget -O - http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo apt update && sudo apt install vivaldi-stable -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/vivaldi
Name=Vivaldi
Comment=Vivaldi
Icon=/usr/share/icons/hicolor/128x128/apps/vivaldi.png" >> /home/$superuser/Desktop/vivaldi.desktop
chmod +x /home/$superuser/Desktop/vivaldi.desktop
else
:
fi
printf "\nVivaldi installation Has Finished"
;;

59) # Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client -y
if [ "$shortcut" = "Y" ] || [ "$shortcut" = "y" ];then
sudo updatedb
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/spotify
Name=Spotify
Comment=Spotify
Icon=/usr/share/icons/hicolor/128x128/apps/spotify-client.png" >> /home/$superuser/Desktop/spotify.desktop
chmod +x /home/$superuser/Desktop/spotify.desktop
else
:
fi
printf "\nSpotify installation Has Finished"
;;
esac