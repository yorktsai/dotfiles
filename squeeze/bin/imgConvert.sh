#!/bin/bash
if [ $# == 0 ]
then
    echo "Use: convert bmp1 bmp2 bmp3 ..."
fi
mkdir -p "converted"
output="10000"
for m in "$@"
do
    echo "-------------------"
    echo "Start converting $m"
    echo "-------------------"
    convert "$m" "converted/${output}.png"
    let "output += 1"
done
