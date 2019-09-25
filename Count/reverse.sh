#!/bin/sh
#Victor Silverio
#CS288
#Part 2.

#Main method
main()
{	
	reverse #Calling the reverse method
}

function reverse()
{

#Variables
lst=( ./Documents/* ) #Creating list to obtain the directory. Moving into an array
counter=0      #Index 0

printf  "This is the original directory list content: \n"
for i in "${lst[@]}" #loop to traverse the directory
do	
	
	directory=${lst[counter]:12} #why trimming? because it will get rid off the slash and main 		directory
	
	counter=$((counter+1)) 	#move array to the next index
	printf  "$directory "	# directory
done


printf "\n\nThis is the reverse directory list content: \n"	
for i in "${lst[@]}" 		#loop to traverse in reverse
do	
	directory=${lst[counter]:12}
	counter=$((counter-1)) 	#move to the previous index which will go backwards
	printf "$directory "
done

}

main #calling main mathod
