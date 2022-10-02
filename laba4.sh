#!/bin/bash

function word_recognizer()
{
  if [[ "$1" = [nN][oO0uU][lL] ]]; then symbol="0" 
  elif [[ "$1" = [oOaA0][dDtT][iIeEyY][nN] ]]; then symbol="1"
  elif [[ "$1" = [dDtT][vVwWfF][aA] ]]; then symbol="2"
  elif [[ "$1" = [tTdD][rR][iIeEyY] ]]; then symbol="3"
  elif [[ "$1" = [cCsS][hH][eEiIyY][tTdD][iIeEyY][rR][eEiI] ]]; then symbol="4"
  elif [[ "$1" = [pPbB][yYiI][aA][tTdD] ]]; then symbol="5"
  elif [[ "$1" = [sSzZ][cC][hH][eE][sSzZ][tTdD] ]]; then symbol="6"
  elif [[ "$1" = [sSzZ][eEiI][mM] ]]; then symbol="7"
  elif [[ "$1" = [vVwW][oO0][sSzZ][eEiIyY][mM] ]]; then symbol="8"
  elif [[ "$1" = [dDtT][eEiI][vVwW][yYiI][aA][tTdD] ]]; then symbol="9"
  elif [[ "$1" = [pPbB][lL][uUyY][sSzZ] ]]; then symbol="+"
  elif [[ "$1" = [mM][iIeEyY][nN][uUyY][sSzZ] ]]; then symbol="-"
  elif [[ "$1" = [uUyY][mM][nN][oO0][zZsS][hH][iIeE][tTdD] ]]; then symbol="\*"
  elif [[ "$1" = [rR][aAoO0][zZsS][dDtT][eEiIyY][lL][iIeE][tTdD] ]]; then symbol="/"
  fi
  echo $symbol
}

function calculation()
{
  if [ "$2" = "+" ]; then result=$( expr $1 + $3 )
  elif [ "$2" = "-" ]; then result=$( expr $1 - $3 )
  elif [ "$2" = "\*" ]; then result=$( expr $1 \* $3 )
  elif [ "$2" = "/" ]; then result=$( expr $1 / $3 )
  fi
  echo $result
}

echo Privet, samiy razvitiy!
echo Vse vozmozhnie chisla i znaki:
echo 1: [oOaA0][dDtT][iIeEyY][nN]
echo 2: [dDtT][vVwWfF][aA]
echo 3: [tTdD][rR][iIeEyY]
echo 4: [cCsS][hH][eEiIyY][tTdD][iIeEyY][rR][eEiI]
echo 5: [pPbB][yYiI][aA][tTdD]
echo 6: [sSzZ][cC][hH][eE][sSzZ][tTdD]
echo 7: [sSzZ][eEiI][mM]
echo 8: [vVwW][oO0][sSzZ][eEiIyY][mM]
echo 9: [dDtT][eEiI][vVwW][yYiI][aA][tTdD]
echo +: [pPbB][lL][uUyY][sSzZ]
echo -: [mM][iIeEyY][nN][uUyY][sSzZ]
echo *: [uUyY][mM][nN][oO0][zZsS][hH][iIeE][tTdD]
echo /: [rR][aAoO0][zZsS][dDtT][eEiIyY][lL][iIeE][tTdD]
echo Vvedi 1 chislo:
read input1
number1=`word_recognizer $input1`
while [[ "$input1" = "" || "$number1" = "" ]]
do
echo Vvedi 1 chislo pravilno!
read input1
number1=`word_recognizer $input1`
done
echo Teper vvedi znak:
read input2
sign=`word_recognizer $input2`
while [[ "$input2" = "" || "$sign" = "" ]]
do
echo Vvedi znak pravilno!
read input2
sign=`word_recognizer $input2`
done
echo Vvedi 2 chislo:
read input3
number2=`word_recognizer $input3`
while [[ "$input3" = "" || "$number2" = "" ]]
do
echo Vvedi 2 chislo pravilno!
read input3
number2=`word_recognizer $input3`
done
result=`calculation $number1 $sign $number2`
echo $result