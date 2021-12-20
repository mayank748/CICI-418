#! /bin/bash/ -x

function convertDayNumberToDayName(){
dayValue=$1
case $dayValue in
        1)
                echo "Monday";;
        2)
                echo "Thuesday";;
        3)
                echo "Wednesday";;
        4)
                echo "Thusday";;
        5)
                echo "Friday";;
        6)
                echo "Saturday";;
        7)
                echo "Sunday";;
        *)
                echo "Enter the correct value of day"
esac

}

read -p "Enter the day in week " dayNumber
convertDayNumberToDayName $dayNumber
