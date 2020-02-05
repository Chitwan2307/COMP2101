#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)



read -p "enter the password:" testString



secretPassword="CHITWAN"



if [ $testString = $secretPassword ]
then
 echo "the password you guessed is correct!"
else
        echo "the password you typed is wrong"
fi


for try in {1..5}
do
        read -p "Try ($try): enter password:" testString
        if [ $testString = $secretPassword ]
        then
                echo "the password you guessed is correct"
		 break
        else
                echo "The password you typed is wrong"
        fi
done
