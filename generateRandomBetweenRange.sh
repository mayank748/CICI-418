

function randomNumber(){
isTrue='true'
givenLengthOfNumber=2

while [ $isTrue == 'true' ]
do
	vaueOfNumber=$((RANDOM%100))
	lengthOfNumber=`echo ${#vaueOfNumber}`
		if [ $lengthOfNumber -eq $givenLengthOfNumber ]
		then
			isTrue='false'
			echo $vaueOfNumber
		fi
done

}


for((i=0;i<5;i++))
do
echo `randomNumber`
done
