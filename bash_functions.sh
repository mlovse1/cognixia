#!/usr/bin/bash

param_1=$1
param_2=$2
param_3=$3

f_one(){
        first_num=$1
        echo "You entered ${first_num}."
}

f_two(){
        first_num=$1
        sec_num=$2
        my_sum=$(($first_num + $sec_num))
        echo "The sum is ${my_sum}."
}

f_three(){
        first_num=$1
        sec_num=$2
        thr_num=$3
        my_sum=$(($first_num + $sec_num + $thr_num))
        echo "The sum is ${my_sum}."
}


if [ "$1" == "" ]; then
  echo "Possible Usages:"
  echo "$0 <number1>"
  echo "$0 <number1> <number2>"
  echo "$0 <number1> <number2> <number3>"
  exit 1
elif [ "$1" != "" ] && [ "$2" == "" ]; then
        f_one ${param_1}

elif [ "$1" != "" ] && [ "$3" == "" ]; then
   f_two ${param_1} ${param_2}

else
   f_three ${param_1} ${param_2} ${param_3}
fi
