#! /bin/bash/ -x

function checkVowelIsTheirOrNot(){
	alphaValue=$1
	valueAfterConverstion=`upperCaseToLowerCaseConversion $alphaValue`
	case $valueAfterConverstion in
		'a')
			addVowel $countA $alphaValue
			((countA++));;
		'e')
			addVowel $countE $alphaValue
			((countE++));;
		'i')
			addVowel $countI $alphaValue
			((countI++));;
		'o')
			addVowel $countO $alphaValue
			((countO++));;
		'u')
			addVowel $countU $alphaValue
			((countU++));;
	esac
}

function addVowel(){
	countValue=$1
	alphabate=$2
	if [ $countValue -eq 0 ]
	then
		totalVoweslInWord=$totalVoweslInWord" "$alphabate
	fi
}

function  upperCaseToLowerCaseConversion(){
		valueAlphabate=$1
		echo "${valueAlphabate,,}"

}


echo "Welcome to get vowels form the word"
read -p "Enter the word " testWord

legthOfVariabl=`echo ${#testWord}`
echo $legthOfVariabl

totalVoweslInWord=''

arrayWithVowel[0]='a'
arrayWithVowel[1]='e'
arrayWithVowel[2]='i'
arrayWithVowel[3]='o'
arrayWithVowel[4]='u'
countA=0
countE=0
countI=0
countO=0
countU=0

for((i=1;i<=$legthOfVariabl;i++))
do
        letterInWord=`echo $testWord | awk -v var=$i 'BEGIN{FS="";OFS=" "} {print $var}'`
        echo 'letterInWord '$letterInWord

	for((j=0;j<${#arrayWithVowel[@]};j++))
	do
		returnValueFromFunction=`upperCaseToLowerCaseConversion $letterInWord`
		if [ $returnValueFromFunction == ${arrayWithVowel[$j]} ]
		then
			checkVowelIsTheirOrNot $letterInWord
		fi
	done
done

echo "Total vowels in word "$totalVoweslInWord


