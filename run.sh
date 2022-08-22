#!/bin/bash
printf "\033c"

Red_Error() {
  printf '\033[1;31;40m%b\033[0m\n' "$@"
}

if [ $(whoami) != "root" ]; then
  Red_Error "[x] Please use root to run this script!"
fi

echo "============= IceBrick's Linux Tool ===============
(1) Install NodeJS v16       (2) Coming soon
(0) 
==============================================="

read -r -p "[-] Please type the command number: " cmd;

if [ "$cmd" ] && [ "$cmd" -gt 0 ] && [ "$cmd" -lt 2 ]; then
   echo "==============================================="
   echo "[-] Runnning($cmd)..."
   echo "==============================================="
fi

if [ "$cmd" == 1 ]
then
  curl -s https://deb.nodesource.com/setup_16.x | sudo bash
  sudo apt install nodejs -y
elif [ "$cmd" == 2 ]
then
   echo "==============================================="
   echo "[-] Coming soon!"
   echo "==============================================="
else
  echo "==============================================="
  echo "[-] Invalid Command！"
fi
