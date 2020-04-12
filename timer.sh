#!/bin/bash
clear
if [ "$1" == "" ]
then
	echo " >> Timer >> Error-01: Pleese input time."
	exit 1
fi
echo " >> Timer >> You set a $1 minute alarm."
sleep 1
clear
for ((i=$1-1;i>=0;i--))
do
        if [ "$i" = "0" ]
        then
                echo " >> Timer >> Time is over. "
                exit
        fi
        ((Minute=$i/60))
        ((Second=$i%60))
        echo " >> Timer >> Your alarm has $Minute:$Second minutes left."
        sleep 1
		  clear
done
