#!/bin/bash

echo "enter number"
read number



if [ $number -gt 0 ]
then
echo  "num  possitive"
elif [ $number -lt 0 ]
then
echo "num negative"
else
echo "num = 0"
fi
echo "###############"

for i in {1..10}
do
if [ $(($i%2)) -eq 0 ]
then 
echo "number $i is even"
else
echo "number is not even"
fi
done

echo "####################"

source="/home/harel/new_folder"
destanation="/home/harel/backup_folder"


for file in "$source"/*
do
filename=$(basename "$file")
timestamp=$(date +%Y%m%d_%H%M%S)
cp "$file" "$destanation/${filename%.*}_$timestamp.${filename##*.}"
#%.*-remove everything after dot
#${filename##*.} extract just the file extantion
echo ${filename%.*}
done




