#!/bin/bash

num=$1

for ((i=1;i<=16;i++))
do
    low=$((2**($i-1)))
    high=$((2**$i))
    avg=$((($low+$high)/2))
    if [[ $num -le 0 ]];then
        echo "error!"
        exit 1
    fi
    if [[ $num -eq $low || $num -eq $high ]];then
        echo $num
        break
    fi
    if [[ $num -gt $low && $num -lt $high ]];then
        if [[ $num -lt $avg ]];then
            echo $low
            break
        else
            echo $high
            break
        fi
    fi
done
