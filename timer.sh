#!/bin/bash

clear


PET=$(whiptail --title "Input time (seconds), must be numbers." --inputbox "Input a number." 10 60  3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then

rd=$PET
clear
if [ "$rd" == "" ]
then
	echo -e "\e[36m >> Timer >> \e[31mError-01: Pleese input time.\e[31m"
	exit 1
fi
clear
if [ "$rd" = "0" ]
then
	whiptail --title "Time is over." --msgbox "The Time is over!" 10 60
	exit 0
fi

add=$((100/$rd))
{
    for ((i = 0 ; i <= 100 ; i+=$add)); do
        sleep 1
        echo $i
    done
} | whiptail --gauge "Timer" 6 60 0
	whiptail --title "Time is over." --msgbox "The Time is over!" 10 60
else
    echo "You chose Cancel."
fi
