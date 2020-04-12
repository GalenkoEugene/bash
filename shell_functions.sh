#! /bin/bash

# Exercise
# In this exercise, you will need to write a function called ENGLISH_CALC
# which can process sentences such as:

# '3 plus 5', '5 minus 1' or '4 times 6'
# and print the results as: '3 + 5 = 8', '5 - 1 = 4'
# or '4 * 6 = 24' respectively.

function ENGLISH_CALC {
  STRING=$1
  OPERATION=`echo $STRING | tr -d '[:space:]|[:digit:]'`
  REZULT=''
  case $OPERATION in
    plus) REZULT=${STRING[@]/plus/+};;
    minus) REZULT=${STRING[@]/minus/-};;
    times) REZULT=${STRING[@]/times/*};;
    *) echo "Please follow next structure: '`shuf -i 0-100 -n 1` plus `shuf -i 0-100 -n 1`', '5 minus 1' or '4 times 6'";;
  esac

  echo "$REZULT = $((REZULT))"
}

ENGLISH_CALC "12 plus 5"
ENGLISH_CALC "7 minus 1"
ENGLISH_CALC "3 times 8"
ENGLISH_CALC "4 unsupported-operation 6"

echo -e "\nLet's try your own expression."
echo "Type in the next format 'operand' 'operator' 'operand'"
echo "Availavle operators is: 'plus', 'minus', 'times'"
echo "Example: '2 plus 2'"
read user_string
ENGLISH_CALC "$user_string"
echo -e "\nEND\n"

# example with multiple arguments

function ENGLISH_CALC_WITH_MULTIPLE_ARGS {
  OPERATION=''
  case $2 in
    plus) OPERATION='+';;
    minus) OPERATION='-';;
    times) OPERATION='*';;
  esac

  echo "$1 $OPERATION $3 = $(($1 $OPERATION $3))"
}
# testing code
ENGLISH_CALC_WITH_MULTIPLE_ARGS 3 plus 5
ENGLISH_CALC_WITH_MULTIPLE_ARGS 5 minus 1
ENGLISH_CALC_WITH_MULTIPLE_ARGS 4 times 6
