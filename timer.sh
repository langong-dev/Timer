#!/bin/bash

clear


PET=$(whiptail --title "Timer" --inputbox "Input time (seconds), must be numbers." 10 60  3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then

rd=$PET
clear
if [ "$rd" == "" ]
then
	whiptail --title "Timer" --msgbox "Please input the time!" 10 60
	exit 1
fi
clear
if [ "$rd" = "0" ]
then
	whiptail --title "Timer" --msgbox "The Time is over!" 10 60
	exit 0
fi

add=$((100/$rd))
if [ $((100/$rd)) > $((0)) ]
then 
	add=$(printf "%.5f" `echo "scale=5;100/$rd"|bc`)
fi
{
    for ((i = 0 ; i <= $rd ; i+=1)); do
        sleep 1
        echo $(printf "%.0f" `echo "scale=5;$i*$add"|bc`)
    done
} | whiptail --gauge "Timer" 6 60 0
	whiptail --title "Timer" --msgbox "Time is over!" 10 60
else
    echo "You chose Cancel."
fi

###### Made By LanGongINC ###### 

###### Copyritht 2020 LanGongINC ######

###### Made with GitHun and Git ######
