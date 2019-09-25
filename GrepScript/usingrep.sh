#!/bin/sh
#Victor Silverio
#CS288 - Homework 3.

#Go to homework3 folder where everything will be saved.
cd Desktop/CS288/homework/homework3


wget -O index.html youtube.com


#GREP USER
grep -o -E 'user/.*' index.html | cut -d'"' -f1 | cut -d "/" -f2 > user.txt

#insert the name of the colum on top of the list
sed -i '1i User' user.txt



#GREP VIEW
grep -Eo "<li>.* views<\/li>" index.html | cut -d ">" -f2 | cut -d " " -f1 > view.txt
sed -i '1i Views' view.txt #name the column 

#GREP TIME(duration)
grep -Eo 'video-time.*' index.html | cut -d ">" -f2 | cut -d "<" -f1 > time.txt
sed -i '1i Time' time.txt #name the column 


#GREP ID
grep -Eo 'description-id.*' index.html | cut -d ">" -f1 | tr -d '[a-z]"=-' | cut -d " " -f1 > id.txt
sed -i '1i ID' id.txt #name the column 


#GREP TITLE
grep -Eo 'title=\".*" aria-describedby' index.html | cut -d\" -f2 > title.txt
sed -i '1i Title' title.txt #name the column 


#Join files "*" is the delimeter to separate them by column.
paste title.txt time.txt view.txt user.txt id.txt -d "*" > mytable.csv

