#!/bin/bash
read -p "Enter 1st number" x
read -p "Enter 2nd number" y
read -p "Enter 3rd number" z

c1=`expr $x + $y \* $z`
c2=`expr $x \* $y + $z`
c3=`expr $z + $x / $y`
c4=`expr $x % $y + $z`

declare -A computation=([comp1]=$c1 [comp2]=$c2 [comp3]=$c3 [comp4]=$c4)
declare -a array=("${computation[@]}")
