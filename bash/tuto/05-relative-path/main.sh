#!/usr/bin/env bash
fichier_courant="${BASH_SOURCE[0]}"
rp="$(realpath "$fichier_courant")"
dn="$(dirname "$rp")"
source "$dn/lib/mylib.sh"

bash.color.red "allo"

