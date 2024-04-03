#!/bin/bash

#Colour designations: (1 - white, 2 - red, 3 - green, 4 - blue, 5 - purple, 6 - black)

white="\033[97m"
red="\033[91m"
green="\033[92m"
blue="\033[94m"
purple="\033[95m"
black="\033[30m"
reset="\033[0m"

white_background="\033[107m"
red_background="\033[101m"
green_background="\033[102m"
blue_background="\033[104m"
purple_background="\033[105m"
black_background="\033[100m"

data[0]=$color1
data[1]=$color2
data[2]=$color3
data[3]=$color4

for i in 0 2; do
    if [ ${data[$i]} -eq 1 ]; then
        data[$i]=$white
    elif [ ${data[$i]} -eq 2 ]; then
        data[$i]=$red
    elif [ ${data[$i]} -eq 3 ]; then
        data[$i]=$green
    elif [ ${data[$i]} -eq 4 ]; then
        data[$i]=$blue
    elif [ ${data[$i]} -eq 5 ]; then
        data[$i]=$purple
    elif [ ${data[$i]} -eq 6 ]; then
        data[$i]=$black
    fi                  
done

for i in 1 3; do
    if [ ${data[$i]} -eq 1 ]; then
        data[$i]=$white_background
    elif [ ${data[$i]} -eq 2 ]; then
        data[$i]=$red_background
    elif [ ${data[$i]} -eq 3 ]; then
        data[$i]=$green_background
    elif [ ${data[$i]} -eq 4 ]; then
        data[$i]=$blue_background
    elif [ ${data[$i]} -eq 5 ]; then
        data[$i]=$purple_background
    elif [ ${data[$i]} -eq 6 ]; then
        data[$i]=$black_background
    fi                  
done

names_back=${data[0]}
names_font=${data[1]}
value_back=${data[2]}
value_font=${data[3]}

HOSTNAME=$(hostname)
echo -e "${names_back}${names_font}HOSTNAME:${reset}${value_back}${value_font}$HOSTNAME${reset}"

TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}')
UTC=$( date +%z)
echo -e "${names_back}${names_font}Timezone:${reset}${value_back}${value_font} $TIMEZONE UTC $UTC${reset}"

USER=$(whoami)
echo -e "${names_back}${names_font}User:${reset}${value_back}${value_font} $USER${reset}"

OS=$(hostnamectl | grep Operating | awk '{print $3,$4,$5}')
echo -e "${names_back}${names_font}OS:${reset}${value_back}${value_font}$OS${reset}"

DATE=$(date '+%d %B %Y %T')
echo -e "${names_back}${names_font}Date:${reset}${value_back}${value_font} $DATE${reset}"

UPTIME=$(uptime -p)
UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
echo -e "${names_back}${names_font}Uptime:${reset}${value_back}${value_font} $UPTIME${reset}"
echo -e "${names_back}${names_font}Uptime_sec:${reset}${value_back}${value_font} $UPTIME_SEC${reset}"

IP=$(ifconfig | grep "netmask" | awk '{print $2, $3, $4}')
GATEWAY=$(ip route | grep default | awk '{print $3}')
echo -e "${names_back}${names_font}IP:${reset}${value_back}${value_font}$IP${reset}"
echo -e "${names_back}${names_font}GATEWAY:${reset}${value_back}${value_font}$GATEWAY${reset}"

RAM_TOTAL=$(free -b | awk '/Mem/{printf "%.2fGb\n", $2/1024/1024/1024}')
RAM_USED=$(free -b | awk '/Mem/{printf "%.2fGb\n", $3/1024/1024/1024}')
RAM_FREE=$(free -b | awk '/Mem/{printf "%.2fGb\n", $4/1024/1024/1024}')

echo -e "${names_back}${names_font}RAM_TOTAL:${reset}${value_back}${value_font} $RAM_TOTAL${reset}"
echo -e "${names_back}${names_font}RAM_USED:${reset}${value_back}${value_font} $RAM_USED${reset}"
echo -e "${names_back}${names_font}RAM_FREE:${reset}${value_back}${value_font} $RAM_FREE${reset}"

SPACE_ROOT=$(df -B1 / | awk 'NR==2 {printf "%.2fGb\n", $2/1024/1024/1024}')
SPACE_ROOT_USED=$(df -B1 / | awk 'NR==2 {printf "%.2fGb\n", $3/1024/1024/1024}')
SPACE_ROOT_FREE=$(df -B1 / | awk 'NR==2 {printf "%.2fGb\n", $4/1024/1024/1024}')

echo -e "${names_back}${names_font}SPACE_ROOT:${reset}${value_back}${value_font} $SPACE_ROOT${reset}"
echo -e "${names_back}${names_font}SPACE_ROOT_USED:${reset}${value_back}${value_font} $SPACE_ROOT_USED${reset}"
echo -e "${names_back}${names_font}SPACE_ROOT_FREE:${reset}${value_back}${value_font} $SPACE_ROOT_FREE${reset}"

