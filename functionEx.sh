#! /bin/bash/ -x

globalVariable='global'

function exmpaFunc(){
	local localVariable=$1
	local variableValue=$2
	echo "Output from with key word function";
	echo $localVariable
	echo $variableValue
	echo 2
}

withoutKey(){
	echo 'false'
}

withKeyWordFunction=`exmpaFunc 'local' 'variable'`
echo $withKeyWordFunction

returnValue=`withoutKey`

if [ $returnValue == 'true' ]
then
	echo "True value"
fi
