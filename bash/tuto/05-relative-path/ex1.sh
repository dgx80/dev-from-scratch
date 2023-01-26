#!/usr/bin/env bash
function log_detail()
{
    local arg1
    local rp
    local dn
    arg1="$1"
    rp="$(realpath "$arg1")"
    dn="$(dirname "$rp")"

    echo "var: $arg1"
    echo "realpath: $rp"
    echo "dirname: $dn"
}
echo "-------------------\$0----------------------------"
log_detail "$0"
echo "-------------------\$BASH_SOURCE[0]----------------------------"
log_detail "${BASH_SOURCE[0]}"
