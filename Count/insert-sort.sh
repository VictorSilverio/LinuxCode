#!/bin/sh
#Victor Silverio
#CS288
#Part 4.


lst=( "$@" )		#Take input in console as a parameter

for i in "${lst[@]}"	#traverse through the array
do
	echo "$i"		#print

done | sort		#sort
