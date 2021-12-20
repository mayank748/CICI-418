#! /bin/bash/ -x

read -p "Enter the number of week day " dayNumberInWeek
echo $dayNumberInWeek

if [ $dayNumberInWeek -eq 1 ]
then 
	echo "Monday"
elif [ $dayNumberInWeek -eq 2 ]
then 
	echo "Thuesday"
elif [ $dayNumberInWeek -eq 3 ]
then 
	echo "Wednesday"
elif [ $dayNumberInWeek -eq 4 ]
then 
	echo "Thusday"
elif [ $dayNumberInWeek -eq 5 ]
then
	echo "Friday"
elif [ $dayNumberInWeek -eq 6 ]
then
	echo "Saturday"
elif [ $dayNumberInWeek -eq 7 ]
then
	echo "Sunday"
elif [ $dayNumberInWeek -gt 7 ] || [ $dayNumberInWeek -le 0 ]
then
	echo "Enter the correct value"
fi
