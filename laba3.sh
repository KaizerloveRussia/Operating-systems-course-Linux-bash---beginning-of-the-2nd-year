#!/bin/bash

echo "Hi, my pid is $$"
echo "Please, enter the output pid:"
read pid
check='^[0-9]+$'
while [[ -z $pid ]] || ! [[ $pid =~ $check ]] || ! [[ "$(ps -p $pid -o comm=)" = "bash" ]];
do
echo "Enter a correct pid!"
read $pid
done
echo "Please enter the password:"
read password
touch hist.txt
openssl enc -aes-256-cbc -salt -pass pass:$password -in hist.txt -out hist.enc -iter 10000
rm -f hist.txt
trap "echo \"Bye, good luck!\"" 15
echo "Ready! Enter 'otpustite' to close the chat"
while true
do
read text
if [[ $text = "otpustite" ]]
then kill -15 $pid
exit 0
fi
openssl enc -aes-256-cbc -salt -pass pass:$password -d -in hist.enc -out hist.txt -iter 10000
echo $text >> hist.txt
tail -n 1 hist.txt > /proc/$pid/fd/1
openssl enc -aes-256-cbc -salt -pass pass:$password -in hist.txt -out hist.enc -iter 10000
rm -f hist.txt
done
