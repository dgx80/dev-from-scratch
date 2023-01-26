#!/usr/bin/env bash
file="${BASH_SOURCE[0]}"
relative_file="$(realpath "$file")"
file_dirname="$(dirname "$relative_file")"


function boot.autoload()
{
    local namespace="$1"

    if [ ! -d "$namespace" ]; then
        return
    fi
  

    for file in $namespace/*
    do
        if [ -f "$file" ]; then
            source "$file"
        fi
    done
}

boot.autoload "$file_dirname/lib"

bash.color.red "allo from the script"

lib.bash.printer.title "ceci est mon titre"

