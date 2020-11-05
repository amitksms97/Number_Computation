#!/bin/bash
read -p "Enter 1st number" x
read -p "Enter 2nd number" y
read -p "Enter 3rd number" z
echo "$x | $y | $z"
c1=`expr $x + $y \* $z`
c2=`expr $x \* $y + $z`
c3=`expr $z + $x / $y`
c4=`expr $x % $y + $z`
declare -A computation
computation=([comp1]=$c1 [comp2]=$c2 [comp3]=$c3 [comp4]=$c4)
declare -a array
array=(${computation[@]})
echo "Result in Ascending order:"
n=$(printf '%s\n' "${array[@]}" | sort -n)
echo $n
echo "Results in Descending Order:"
for ((i=0; i<4; i++))
do
        if [ ${array[$i]} -gt ${array[$i+1]} ]
        then
                temp=${array[$i]}
                array[$i]=${array[$i+1]}
                array[$i+1]=$temp
        fi
echo ${array[$i]}
done

