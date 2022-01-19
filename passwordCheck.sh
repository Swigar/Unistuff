#!/bin/bash

read -p "Folder Name : " foldername
mkdir "$foldername"
read -sp "Password : " passWord
echo "$passWord" | sha256sum >>$foldername/secret.txt

string1=$( cat ~/Desktop/scripts/portfolio/Week2/$foldername/secret.txt )
echo
read -sp "Repeat your password?  " pw 
echo 
echo "$pw" | sha256sum >>$foldername/pass_hash.txt
string2=$( cat ~/Desktop/scripts/portfolio/Week2/$foldername/pass_hash.txt )

if [ "$string1" = "$string2" ]

then
echo "Access Granted"
exit 0
else
echo "Access Denied"
exit 1 
fi

