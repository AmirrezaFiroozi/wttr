#!/bin/bash
#author : Amirreza Firoozi
#installer of wttr
clear
echo -e "******************************\nWelcome to installer of wttr \n *************************** \n Installing ..."
sudo cp -R "wttr" /usr/bin  2>/dev/null 
 st_0=$?
cd /usr/bin
echo -e "******************************\n Giving permission ..."
sudo chmod +x /usr/bin/wttr 2>/dev/null 
 st_1=$?
if [ $st_0 == 0 ] && [ $st_1 == 0 ];then
    echo -e "\n********* Congratulations!!! installation has just completed *********\n"
    wttr -h
else
    echo -e "\n There were some problems while installing :(\n Installation failed :( "
fi 
