#! /bin/bash/ -x
 
echo "Welcome to get vowels form the word"
read -p "Enter the word " testWord
echo $testWord

legthOfVariabl=`echo ${#testWord}`
echo $legthOfVariabl

totalVoweslInWord=''

for((i=1;i<=$legthOfVariabl;i++))
do
	letterInWord=`echo $testWord | awk -v var=$i 'BEGIN{FS="";OFS=" "} {print $var}'`
	echo 'letterInWord '$letterInWord
	if [ $letterInWord == a ] || [ $letterInWord == e ] || [ $letterInWord == i ] || [ $letterInWord == o ] || [ $letterInWord == u ]
	then
		totalVoweslInWord=$totalVoweslInWord" "$letterInWord
	fi
done

echo "Total vowels in word "$totalVoweslInWord
