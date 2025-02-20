#!/bin/bash


earth=countries.txt
while read -r line;
do 
	useradd $line
	echo "favour1981" | passwd --stdin $line
done < "$earth" 
