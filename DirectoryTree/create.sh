#!/bin/sh
#Victor Silverio
#CS288
#Homework 2 on Creating Directory Tree.

create()
{  
   #variables
   directory=$1 
   
   #depth for-loop
   for(( i=1; i<=depth; i++ )); do

       for x in ${directory[@]}; do
           tmp=()

	   #breadth
	   for(( k=1; k<=breadth; k++ )); do
	         mkdir -p $x/$k 	#create directory
		 tmp=($tmp $x/$k)	   

	   done #end of breadth

       done #end of loop for x
       directory=($temp)
   done 

} #end of function

#Variables command line/Parameters
depth=$1
breadth=$2	
directory=$3
create $directory #call create function and pass paremeter
