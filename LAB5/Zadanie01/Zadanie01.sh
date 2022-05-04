#!/bin/bash

function MAX
{  

local MAX=$1
shift
while [ "$1" ]
do
	if [ $1 -gt ${MAX} ] ; then
		MAX=$1
	fi
	shift
done
echo ${MAX}
return 0
}



liczba=0;
i=0;
echo "Podaj liczby"
echo "Aby zakończyć wpisz znak e"
while [ "$liczba" != 'e' ] 
do
read liczba
if [ $liczba = "e" ]
		then 
		echo "koniec wpisywania "
	else
		tab[$i]="$liczba"
		
		i=$i+1
	fi	
done
echo "Liczby: ${tab[*]}";

MAX ${tab[*]}
