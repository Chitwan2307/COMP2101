#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

prompt="enter number one and two"
read -p"$prompt" firstnumb secondnumb
addition=$((firstnumb + secondnumb))
difference=$((firstnumb - secondnumb))
product=$((firstnumb * secondnumb))
remainder=$((firstnumb % secondnumb))
dividend=$((firstnumb / secondnumb))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnumb/$secondnumb}")

cat <<EOF
$firstnumb plus $secondnumb is $addition
$firstnumb minus $secondnumb is $difference
$firstnumb times $secondnumb is $product
$firstnumb divided by $secondnumb is $dividend, with the remainder of $remainder
  - More precisely, it is $fpdividend
EOF
