#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo -e "${greenColour}[+]${endColour}${blueColour} actualizando sistema...${endColour}"
sudo apt update &>/dev/null
sudo apt upgrade -y &>/dev/null
echo -e "${greenColour}[+]${endColour}${blueColour} instalando xinput...${endColour}"
sudo apt install xinput &>/dev/null
echo -e "${greenColour}[+]${endColour}${blueColour} instalación de xinput exitosa.${endColour}"
xinput set-prop $(xinput list | grep "Touchpad" | awk '{print $6}' | sed 's/=/ /g' | awk '{print $2}') "libinput Tapping Enabled" 1
echo -e "${greenColour}[+]${endColour}${blueColour} Ejecutado satisfactoriamente!${endColour}"
