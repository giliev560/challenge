#!/bin/bash
#Check if integer x is divisible by integer y, x >= y 
echo "Enter whole number x"
read x
echo "Enter whole number y, y < x"
read y 

div() {
  result=$((x / y))
  if [[ $result =~ ^[0-9]+$ ]] & [[ $((result * y)) == $x ]]
  then
    echo "$x is divisible by $y, by a factor of $result"
  else
    echo "$x is not divisible by $y"
  fi
}
div
