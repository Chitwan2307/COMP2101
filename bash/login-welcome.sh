#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

myname="$USER"

presentDay=$(date +%A)
currentTime=$(date +%I:%M\ %p)
###############
# Main        #
###############
title1="hello, today is wednesday and its snowing outside."
title2="hello, today is thursday and its still snowing"
title3="hello, today is friday and the last day at work"
title4="hello, today is saturday and the weekend has begin"
title5="hello, today is sunday and its a sunny day"
title6="hello, today is monday and most awful day"
title7="hello, today is tuesday and due date of scripting lab"


if [ "$presentDay" = "Monday" ]
then
cat <<EOF
Welcome to planet $hostname, $title6 $USER
It is $currentTime on $presentDay
EOF
elif [ "$presentDay" = "Tuesday" ]
then
cat <<EOF
Welcome to planet $hostname, $title7 $USER
It is $currentTime on $presentDay
EOF

elif [ "$presentDay = "Wednesday" ]
then
cat <<EOF
Welcome to planet $hostname, $title1 $USER
It is $currentTime on $presentDay
EOF

elif [ "$presentDay" = "Thursday" ]
then
cat <<EOF
Welcome to planet $hostname, $title2 $USER
It is $currentTime on $presentDay
EOF

elif [ "$presentDay" = "Friday" ]
then
cat <<EOF
Welcome to planet $hostname, $title3 $USER
It is $currentTime on $presentDay
EOF

elif [ "$presentDay" = "Saturday" ]
then
cat <<EOF
Welcome to planet $hostname, $title4 $USER
It is $currenttime on $presentDay
EOF

elif [ "$presentDay" = "Sunday" ]
then
cat <<EOF
Welcome to planet $hostname, $title5 $USER
It is $currentTime on $presentDay
EOF


fi
EOF
