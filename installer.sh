#!/bin/bash
#author : Amirreza Firoozi
#author : Carsten Brueggenolte
#installer of wttr
#update 1.30: changed installation dir to $HOME/.local/bin and removed sudo because it is really not needed

clear
echo -e "------------------------------------\n  Welcome to installer of wttr\n\n  Installing ..."
cp -R "wttr" $HOME/.local/bin  2>/dev/null 
st_0=$?
cd $HOME/.local/bin
echo -e "  Giving permission ...\n"

chmod +x $HOME/.local/bin/wttr 2>/dev/null 
st_1=$?

if [ $st_0 == 0 ] && [ $st_1 == 0 ];then
  echo -e "  Congratulations!\n  Installation has just completed \n------------------------------------ \n"
    wttr -h
    wttr -v
else
    echo -e "\n There were some problems while installing :(\n Installation failed :( "
fi 
