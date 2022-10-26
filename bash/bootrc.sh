#!/usr/bin/env bash

# Reset
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
    echo "${color}${message}${Color_Off}"

}

function bash.color.purple()
{
    local message="$1"
    echo $(bash.color "$Purple" "${message}")
}

function bash.color.green()
{
    local message="$1"
    echo $(bash.color "$Green" "${message}")
}

function bash.color.yellow()
{
    local message="$1"
    echo $(bash.color "$Yellow" "${message}")
}

function bash.color.blue()
{
    local message="$1"
    echo $(bash.color "$Blue" "${message}")
}

function parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source $HOME/dev/projects/dev-from-scratch/bash/bootrc.sh
export PS1="$(bash.color.green "\u@\h") $(bash.color.blue "\w")$(bash.color.yellow "\$(parse_git_branch)")\n$ "

cd
cd dev/projects/dev-from-scratch