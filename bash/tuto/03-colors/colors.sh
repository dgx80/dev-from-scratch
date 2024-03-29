#!/usr/bin/env bash


Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White


function bash.color()
{
    local color="$1"
    local message="$2"
    echo -e  "${color}${message}${Color_Off}"
}

function bash.color.red()
{
    local message="$1"
    bash.color "$Red" "$message"    
}
bash.color.red "allo"