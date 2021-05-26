#!/bin/bash

reg='^[0-9]*$'

#Read numbers and define into array
for n in {0..5}; 
do
	echo "Please enter numbers to array [element index is $n]:"
	read number
	while [[ ! $number =~ $reg ]]
	do 
	 echo -e "Wrong input\nPlease enter ONLY numbers to array [element index is $n]:"
	 read number
	done
	arr_numbers[$n]=$number
done

echo -e "\n"
echo "Array elements:"
echo -e "${arr_numbers[@]:0:3}\n${arr_numbers[@]:3:3}\n"

#Calculate summ and avarege
for i in {0..2}; 
do 
	arr_sum[$i]=`expr ${arr_numbers[$i]} + ${arr_numbers[$i+3]}`
	avg=`expr ${arr_numbers[$i]} + ${arr_numbers[$i+3]}`
	arr_avg[$i]=`expr $avg / 2`
done

#Print results
echo "Summ:"
echo -e "${arr_sum[@]}\n" 
echo "Average:"
echo -e "${arr_avg[@]}\n"


