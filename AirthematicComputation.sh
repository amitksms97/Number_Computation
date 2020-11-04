#!/bin/bash
read -p "Enter 1st number" x
read -p "Enter 2nd number" y
read -p "Enter 3rd number" z

c1=`expr $x + $y \* $z`
c2=`expr $x \* $y + $z`

