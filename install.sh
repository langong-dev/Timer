#!/bin/bash


clear

whiptail --title "Installer" --msgbox "Welcome to LanGong-Timer Installer" 10 60

npath=$(dirname $(readlink -f "$0"))

cp timer.sh ~/

cd ~/

{
    for ((i = 0 ; i <= 100 ; i+=33)); do
        sleep 1
        echo $i
    done
} | whiptail --gauge "Installing" 6 60 0
whiptail --title "Installer" --msgbox "Done!" 10 60

clear
