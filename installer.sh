#!/bin/bash
#author : Amirreza Firooz
#installer of wttr
clear
echo -e "******************************\nWelcome to installer of wttr \n *************************** \n Installing ..."
sudo cp -R "wttr" /usr/bin
 st_0=$?
cd /usr/bin
echo -e "******************************\n Giving permission ..."
sudo chmod +x wttr
 st_1=$?
if [ $st_0 == 0 ] && [ $st_1 == 0 ];then
    echo -e "\n********* Congratulations!!! installation has just completed *********\n"
    wttr -h
else
    echo -e "\n There were some problems while installing :(\n Installation failed :( "
fi 
