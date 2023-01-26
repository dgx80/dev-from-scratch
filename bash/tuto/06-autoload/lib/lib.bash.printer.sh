#!/usr/bin/env bash

function lib.bash.printer.title()
{
    local title="$1"
    echo "*******************************************************"
    echo "***** $(bash.color.red "$title")"
    echo "*******************************************************"
}