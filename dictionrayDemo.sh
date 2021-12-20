#! /bin/bash/ -x

declare -A demoValue
echo "Welcome"
isTrue='true'
counter=0
arrayForPrinting[$counter]=''


while [ $isTrue == 'true' ]
do
	read -p "Enter the type of value you want to enter " typeValue
		isWant='true'
		counterForArray=0
		arrayToGetValue[$counterForArray]=''
		while [ $isWant == 'true' ]
		do
			read -p "Enter value in array " value
			read -p "Press y to continue " continue
			if ! ( [ $continue == "y" ] || [ $continue == "Y" ] )
			then
				isWant='false'
			else
					value=$value" ,"
			fi
			arrayToGetValue[$counterForArray]=$value
			((counterForArray++))
		done
	demoValue[ $typeValue ]=${arrayToGetValue[@]}
	 valueToBeStoredInArray=`echo "{" $typeValue ":" ${arrayToGetValue[@]} "}"`
	read -p "Press y to continue " continue
	if ! ( [ $continue == "y" ] || [ $continue == "Y" ] )
	then
		isTrue='false'
	else
			valueToBeStoredInArray=$valueToBeStoredInArray" ,"
	fi
	arrayForPrinting[$counter]=$valueToBeStoredInArray
	((counter++))
done

echo "final value "${arrayForPrinting[@]}
