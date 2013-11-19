#!/bin/bash

for arc in *.7z
do
    arcf="${arc:0:${#arc}-3}"
    folder=$arcf
    mkdir "$folder"
    file=$arc
    7z x "$file" -o"$folder"
done
