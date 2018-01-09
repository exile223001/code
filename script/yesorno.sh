#!/bin/sh

yes_or_no(){
	echo "Is your name $* ?"
	while true
	do
		echo -n "Enter yes or no: "
		read x
		case "$x" in
			y | yes ) return 1;;
			n | no  ) return 0;;
			* )		echo "Answer yes or no"
		esac
	done
}

yes_or_no "$1"
if [ $? -eq 1 ] 
then 
	echo "HI my $1 , nice name"
else
	echo "Never mind"
fi

exit 0
