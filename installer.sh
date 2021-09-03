#!/bin/bash
#author : Amirreza Firoozi
#author : Carsten Brueggenolte
#installer of wttr
#update 1.30: changed installation dir to $HOME/.local/bin and removed sudo because it is really not needed
#update 1.54: added check for whether $HOME/.local/bin is on the PATH

clear
echo -e "------------------------------------\n  Welcome to installer of wttr\n\n  Installing ..."
cp -R "wttr" $HOME/.local/bin  2>/dev/null
st_0=$?
cd $HOME/.local/bin
echo -e "  Giving permission ...\n"

chmod +x $HOME/.local/bin/wttr 2>/dev/null
st_1=$?

# Set PATH variable
if [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
  st_2=$?
  echo "  Your PATH is correctly set. Continuing ...\n"
else
  echo "  Your PATH is missing ~/.local/bin, adding ...\n"
  if [ $SHELL == "/bin/bash" || $SHELL == "/usr/bin/bash" ];then
    echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.bashrc
  elif [ $SHELL == "/bin/zsh" || $SHELL == "/usr/bin/zsh" ];then
    echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.zshrc
  elif [$SHELL == "/bin/fish" || $SHELL == "/usr/bin/fish" ];then
    fish_add_path $HOME/.local/bin
  else
    echo -e "  Your shell wasn't either bash, zsh, or fish. Please add $HOME/.local/bin to your PATH.\n"
    st_2=0
  fi
fi


if [ $st_0 == 0 ] && [ $st_1 == 0 ];then
  echo -e "  Congratulations!\n  Installation has just completed \n------------------------------------ \n"
    wttr -h
    wttr -v
else
    echo -e "\n There were some problems while installing :(\n Installation failed :( "
fi


