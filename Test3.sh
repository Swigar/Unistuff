#!/bin/bash

read -p "Folder Name : " foldername
mkdir "$foldername"
read -sp "Password : " passWord
echo "$passWord" | sha256sum >>$foldername/password.txt

string1=$( cat ~/Desktop/scripts/portfolio/Week2/$foldername/password.txt )

read -sp "Repeat your password?  " pw 
echo 
echo "$pw" | sha256sum >>$foldername/pass_hash.txt
string2=$( cat ~/Desktop/scripts/portfolio/Week2/$foldername/pass_hash.txt )

echo $string1
echo $string2