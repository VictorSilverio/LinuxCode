#!/bin/sh

#Victor Silverio
#Part 1.

#Variables
lst=( /bin/* ) #Creating list to obtain the directory
counter=1      #Starting at 1 since we are omiting the first command, variable for index

#Counters for each letter once they appear in the array.
counta=0 countb=0 countc=0 countd=0 counte=0 countf=0 countg=0 counth=0 counti=0 
countj=0 countk=0 countl=0 countm=0 countn=0 counto=0 countp=0 countq=0 countr=0
counts=0 countt=0 countu=0 countv=0 countw=0 countx=0 county=0 countz=0

for i in "${lst[@]}" #loop to traverse
do	
	letter=${lst[counter]:5:1} #Cut the string to remove the /bin directory and just leave the 
				   #name of the commands	
	counter=$((counter+1)) #move array to the next index
	if [[ $letter == "a" ]]; then
		(( counta++))
	fi
	
	if [[ $letter == "b" ]]; then
		(( countb++))
		
	fi

	if [[ $letter == "c" ]]; then
		(( countc++))
		
	fi

	if [[ $letter == "d" ]]; then
		(( countd++))
		
	fi

	if [[ $letter == "e" ]]; then
		(( counte++))
		
	fi

	if [[ $letter == "f" ]]; then
		(( countf++))
		
	fi

	if [[ $letter == "g" ]]; then
		(( countg++))
	fi

	if [[ $letter == "h" ]]; then
		(( counth++))
	fi

	if [[ $letter == "i" ]]; then
		(( counti++))
	fi
		
	if [[ $letter == "j" ]]; then
		(( countj++))
	fi
			
	if [[ $letter == "k" ]]; then
		(( countk++))
	fi
			
	if [[ $letter == "l" ]]; then
		(( countl++))
	fi
		
	if [[ $letter == "m" ]]; then
		(( countm++))
	fi	
	
	if [[ $letter == "n" ]]; then
		(( countn++))
	fi	
		
	if [[ $letter == "o" ]]; then
		(( counto++))
	fi
	
	if [[ $letter == "p" ]]; then
		(( countp++))
	fi
		
	if [[ $letter == "q" ]]; then
		(( countq++))
	fi
		
	if [[ $letter == "r" ]]; then
		(( countr++))
	fi
		
	if [[ $letter == "s" ]]; then
		(( counts++))
	fi
		
	if [[ $letter == "t" ]]; then
		(( countt++))
	fi
	
	if [[ $letter == "u" ]]; then
		(( countu++))
	fi
	
	if [[ $letter == "v" ]]; then
		(( countv++))
	fi
		
	if [[ $letter == "w" ]]; then
		(( countw++))
	fi
	
	if [[ $letter == "x" ]]; then
		(( countx++))
	fi
	
	if [[ $letter == "y" ]]; then
		(( county++))
	fi		
	
	if [[ $letter == "z" ]]; then
		(( countz++))
	fi	
	
done

printf "a $counta \nb $countb \nc $countc \nd $countd\ne $counte\nf $countf\ng $countg\nh $counth\ni $counti\nj $countj\nk $countk\nl $countl\nm $countm\nn $countn\no $counto\np $countp\nq $countq\nr $countr\ns $counts\nt $countt\nu $countu\nv $countv\nw $countw\nx $countx\ny $county\nz $countz"

