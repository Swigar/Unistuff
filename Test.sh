#!/bin/bash

read -p "type a folder name: " folderName
mkdir "$folderName"
read -sp "Password :" userpass
echo
echo $userpass | sha256sum >> $folderName/secret.txt

var_a='cat secret.txt'
read -sp "second password :" var_b
echo
echo $var_b |sha256sum >>~ $folderName/pass_hash

if var_a=pass_hash
then
echo "Your access is granted!"
else
echo "Your access is denied!"
fi

exit0