#!/bin/bash

# loop on array member
NAMES=(Joe Jenny Sara Tony)
for N in ${NAMES[@]} ; do
  echo "My name is $N"
done

# loop on command output results
for f in $( ls loops.sh /usr ) ; do
  echo "File is: $f"
done

# while loop
COUNT=4
while [ $COUNT -gt 0 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT - 1))
done

# until lool
COUNT=1
until [ $COUNT -gt 5 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT + 1))
done

# Prints out only odd numbers - 1,3,5,7,9
COUNT=0
while [ $COUNT -lt 10 ]; do
  COUNT=$((COUNT+1))
  # Check if COUNT is even
  if [ $(($COUNT % 2)) = 0 ] ; then
    continue
    # break # print only - 1
  fi
  echo $COUNT
done


# The while loop will run until the last line is read.
file=/etc/passwd
while read -r line; do
  echo $line
done < "$file"


# Excersise
echo "Excersise"
# In this exercise, you will need to loop through and print out all even
# numbers from the numbers list in the same order they are received.
# Don't print any numbers that come after 237 in the sequence.

NUMBERS=(951 402 984 651 360 69 408 319 601 485 980 507 725 547 544 615 83 165 141 501 263 617 865 575 219 390 237 412 566 826 248 866 950 626 949 687 217 815 67 104 58 512 24 892 894 767 553 81 379 843 831 445 742 717 958 609 842 451 688 753 854 685 93 857 440 380 126 721 328 753 470 743 527)

for number in ${NUMBERS[@]}; do
  if [ $number -eq 237 ] ; then
    break
  elif (( ($number % 2) == 0 )); then
    echo $number
  fi
done
