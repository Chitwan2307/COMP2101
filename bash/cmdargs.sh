#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
s1="-h is for help."
s2="-v is for verbose."
s3="-d is for debug."
verbose=0
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the myargs array"
# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
echo "Processing the '$1'."
	case $1 in
		-h )
			echo "You added \"-h\" for help."
			echo 'Processing -h'
			echo "$s1"
			echo "$s2"
			echo "$s3"
			;;
		-v )
			echo 'You added "-v" for verbose.'
			echo 'Verbose Mode is On.'
			echo 'Processing "-v"'
			;;
		-d )
			debug=1
			case "$2" in
			[1-5] )
				echo "Debug mode is ON."
				level=$2
				echo "You added \'-d\' for debug level $2."
				shift
				;;
				*)
				echo "Error: The debug option must be followed with a number within 1 to 5."
				shift
			esac
			;;
		*)
			errors=$1
			echo "Error: unkown inpute $errors."
			shift
			;;
	esac 
 shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
if [ $verbose -eq 1 ]; then
  echo "Verbose mode is On."
else
  echo "Verbose mode is Off."
fi
if [ $Debug ]; then
  echo "Debug mode is On with level $level."
else
  echo "Debug mode is Off."
fi
#echo "No cmd argument found."
echo "Myarg() array contents ${myargs[@]}"
