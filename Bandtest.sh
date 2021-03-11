#!/bin/sh

init="$(($(cat    /sys/class/net/[ew]*/statistics/rx_bytes | paste -sd '+')))"

printf "Wirte the web address: "

read -r lol

fin="$(($(cat    /sys/class/net/[ew]*/statistics/rx_bytes | paste -sd '+')))"

printf "Bandwidth used:%4sB \\n" $(numfmt --to=iec $(($fin-$init))) 
