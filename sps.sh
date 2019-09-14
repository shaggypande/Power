#!/bin/bash

opt=(Stone Paper Scissor)
valid="[123]"

##Welcome message
echo "****Welcome to the Stone Paper Scissor Game*******"
echo "In case you are new"
echo " *************"
echo "Stone Beats Paper"
echo "Paper beats scissor"
echo "Scissor beat stone"


##Ask for User choice
echo "Choose any one option ( 1 or 2 or 3) among below"
for i in 1 2 3
do
echo "$i: ${opt[$i-1]}"
done

#echo "1. Stone"
#echo "2. Paper"
#echo "3. Scissor"


## Read User Input
read usr_opt



##  Vaidate User Input
if [ -z $usr_opt ] ;then
echo "Plese enter Option Amongst 1,2 and 3"
exit
fi


## Check for Valid input
if [[ ! $valid =~ $usr_opt ]]; then
echo "Please enter valid input"

exit

fi

##Randomly choose Option in shell
comp_opt=${opt[RANDOM%3]}


## Print Computer's randomly selected choice
echo Computer Chose $comp_opt

##Compare and decide Options
case $comp_opt in 
	Stone)
	if [ $usr_opt == "1" ] ;then 
	echo "Same Options, no Winner Here, try again"
	elif [ $usr_opt == "3" ];then
	echo "Computer Won, You loser $USER"
	else echo "You won $USER, Congratulations"
	fi
	;;

        Paper)
        if [ $usr_opt == "2" ] ;then
        echo "Same Options, no Winner Here, try again"
        elif [ $usr_opt == "1" ];then
        echo "Computer Won, You loser $USER"
        else echo "You won $USER, Congratulations"
        fi
        ;;

        Scissor)
        if [ $usr_opt -eq "3" ] ;then
        echo "Same Options, no Winner Here, try again"
        elif [ $usr_opt -eq "2" ];then
        echo "Computer Won, You loser $USER"
        else echo "You won $USER, Congratulations"
        fi
        ;;

esac


##Declare the winner
