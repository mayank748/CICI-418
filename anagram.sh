#! /bin/bash -x

echo "Enter string one : "
read a

echo "Enter string two : "
read b

isLetter=''
str1="${a,,}"
str2="${b,,}"
if ! ( [ ${#str1} == ${#str2} ] )
then
        echo "string are not of the same length so not anagram"
else
	for((i=1;i<=${#str1};i++))
	do
		#cat
	   alphabateInFirstWord=`echo $str1 | awk -v var=$i 'BEGIN{FS="";OFS=" "} {print $var}'`
		echo $alphabateInFirstWord
		for((j=1;j<=${#str2};j++))
		do
			alphabateInSecondWord=`echo $str2 | awk -v var=$j 'BEGIN{FS="";OFS=" "} {print $var}'`
			echo $alphabateInSecondWord
			if [ $alphabateInFirstWord == $alphabateInSecondWord ]
			then
				isLetter=$isLetter""$alphabateInFirstWord
			fi
		done
	done
	if [ $isLetter == $str1 ]
	then
		echo "is anagram"
	else
		echo "not an anagram"
	fi
fi
