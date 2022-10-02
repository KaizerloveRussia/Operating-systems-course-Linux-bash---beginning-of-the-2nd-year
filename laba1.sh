#!/bin/bash

echo Privet, davay sigraem
while [[ $a != "otpustite" ]]
do 
ver=$(($RANDOM % 100))
if [[ $ver -lt 17 ]]
then 
flag=1 #ZHULIK MOD
else 
flag=0 #HONOR 
fi
if [[ $flag = 1 ]]
then echo Chto ty zagadal, k, n ili b?
read a
if [[ $a != "k" ]] && [[ $a != "n" ]] && [[ $a != "b" ]] && [[ $a != "otpustite" ]] #empty input check
then echo Ya zhdu. Vyberi k, n ili b
elif [[ $a = "k" ]] || [[ $a = "b" ]] || [[ $a = "n" ]]
then 
if [[ $a = "k" ]]
then echo Ya viygral, u tebya kamen, a u menya bumaga
elif [[ $a = "n" ]]
then echo Ya viygral, u tebya nozhnitsy, a u menya kamen
elif [[ $a = "b" ]]
then echo Ya viygral, u tebya bumaga, a u menya nozhnitsy
fi
fi
fi
if [[ $flag = 0 ]]
then 
znak=$(($RANDOM % 3)) #gesture random choosing
if [[ $znak = 0 ]]
then 
znak=k
elif [[ $znak = 1 ]]
then 
znak=n
elif [[ $znak = 2 ]]
then 
znak=b
fi
echo Ya uzhe zagadal, tvoya ochered
read a
if [[ $a != "k" ]] && [[ $a != "n" ]] && [[ $a != "b" ]] && [[ $a != "otpustite" ]] #empty input check
then echo Ya zhdu. Vyberi k, n ili b
elif [[ $a = "k" ]] || [[ $a = "b" ]] || [[ $a = "n" ]]
then 
if [[ $a = "k" ]]
then 
if [[ $znak = "k" ]]
then echo Nichya, u nas kamni
elif [[ $znak = "n" ]]
then echo Ti viygral, u menya nozhnitsy, a u tebya kamen
elif [[ $znak = "b" ]]
then echo Ya viygral, u tebya kamen, a u menya bumaga
fi
fi
if [[ $a = "n" ]]
then 
if [[ $znak = "k" ]]
then echo Ya viygral, u tebya nozhnitsy, a u menya kamen
elif [[ $znak = "n" ]]
then echo Nichya, u nas nozhnitsy
elif [[ $znak = "b" ]]
then echo Ti viygral, u menya bumaga, a u tebya nozhnitsy
fi
fi
if [[ $a = "b" ]]
then 
if [[ $znak = "k" ]]
then echo Ti viygral, u menya kamen, a u tebya bumaga
elif [[ $znak = "n" ]]
then echo Ya viygral, u tebya bumaga, a u menya nozhnitsy
elif [[ $znak = "b" ]]
then echo Nichya, u nas bumaga
fi
fi
fi
fi
done
echo Nu ladno, udachi!