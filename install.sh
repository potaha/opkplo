#!/bin/bash
    slm=$(echo "\033[31;3m")
    normal=$(echo "\033[m")
    menu=$(echo "\033[36m") #Blue
    number=$(echo "\033[33m") #yellow
    bgred=$(echo "\033[39;3m")
    fgred=$(echo "\033[32;3m")
    kbred=$(echo "\033[33;3m")
    printf "\n${kbred}-----> Kurulum ilerliyor${normal}\n"
#------------------------------------------------
# Debian 10 Uzak Masaüstü Kurulumu
#------------------------------------------------

sudo apt update

sudo apt -y install xrdp

sudo adduser xrdp ssl-cert

sudo ufw allow 3389

sudo systemctl restart xrdp

dsrt=$(hostnamectl | egrep "Operating System" | cut -f2 -d":" | cut -f2 -d " ")
if [ $dsrt = "Debian" ] ; then
sudo apt-get -y install task-gnome-desktop
elif [ $dsrt = "Ubuntu" ] ; then
sudo apt -y install xfce4
fi

    printf "\n${slm}-----> Kurulum Bitti....${normal}\n"
