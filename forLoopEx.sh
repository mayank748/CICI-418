#! /bin/bash/ -x

for file in `ls *.txt`
do
	fileName=`echo $file | awk -F. '{print $1}'`
	echo $fileName
	mkdir $fileName
done

commaSepartedValue='value1,value2,value3  value4,value5'
echo $commaSepartedValue | awk -F, '{print $3}'
