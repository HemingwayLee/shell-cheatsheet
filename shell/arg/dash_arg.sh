#!/bin/bash

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -m|--mode) mode="$2"; shift ;;
        -q|--queue) queue=1 ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

echo "What is the mode : $mode"
echo "Dose the queue used: $queue"

if [ $queue = 1 ]
then
    echo "number!!"
fi


if [ $queue = "1" ]
then
    echo "string!!"
fi


