#!/bin/bash
printf "\033c"

Red_Error() {
  printf '\033[1;31;40m%b\033[0m\n' "$@"
  exit 0
}

if [ $(whoami) != "root" ]; then
  Red_Error "[x] Please use root to run this script!"
fi

echo "============= IceBrick's Linux Tool ===============
(1) Install NodeJS v16       (2) Coming soon
(0) leave
==============================================="

read -r -p "[-] Please type the command number: " cmdnum;

if [ "$cmdnum" ] && [ "$cmdnum" -gt 0 ] && [ "$cmdnum" -lt 2 ]; then
   echo "==============================================="
   echo "[-] Runnning($cmdnum)..."
   echo "==============================================="
fi

if [ "$cmdnum" == 1 ]
then
  curl -s https://deb.nodesource.com/setup_16.x | sudo bash
  sudo apt install nodejs -y
elif [ "$cmdnum" == 2 ]
then
   echo "==============================================="
   echo "[-] Coming soon!"
   echo "==============================================="
else
  echo "==============================================="
  echo "[-] Invalid Command！"
fi
