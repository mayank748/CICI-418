#! /bin/bash/ -x

declare -A student 
student[11]='Rohit'
student[10]='Mayank'
student[9]='Anshi'

echo "To print the value " ${student[@]}
echo "To print the key " ${!student[@]}
echo "To print the key 9 " ${student[9]}


