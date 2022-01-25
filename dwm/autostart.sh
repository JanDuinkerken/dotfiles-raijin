#!/bin/bash

sh ~/.fehbg

arr=("picom" "~/dwm-bar/dwm_bar.sh" "dunst" "clipmenud")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | wc -l`
    if [ $isExist = 1 ] || [ $isExist = 0 ]
    then
        if [[ $value = "picom" ]]
        then
            exec `"$value" -b`
        else
            exec "$value" &
        fi
    fi
done
