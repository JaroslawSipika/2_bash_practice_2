#!/bin/bash

function sortowanie_rosnaco
{
    for i in $@;
    do
       	tab1[$i]="$i";
    done

lz="${#tab1[*]}";
#echo "dlugosc $lz"
tmp=0
for(( z=1 ; $z < $lz ; z++ )) ; do
        for(( j=$(($lz-1)) ; $j >= $z ; j-- )); do
                if [[ ${tab1[j-1]} -gt ${tab1[j]} ]]; then
                        tmp=${tab1[j-1]}
                        tab1[j-1]=${tab1[j]}
                        tab1[j]=$tmp
                fi
        done
done


echo "Liczby rosnaco: ${tab1[*]}";

}


function sortowanie_malejaco
{
    for i in $@;
    do
       	tab2[$i]="$i";
    done

lz="${#tab2[*]}";
#echo "dlugosc $lz"
tmpz=0
echo "Liczby : ${tab2[*]}";
for(( z=1 ; $z < $lz ; z++ )) ; do
        for(( j=$(($lz-1)) ; $j >= $z ; j-- )); do
                if [[ ${tab2[j-1]} -lt ${tab2[j]} ]]; then
                        tmpz=${tab2[j-1]}
                        tab2[j-1]=${tab2[j]}
                        tab2[j]=$tmpz
                fi
        done
done

echo "Liczby posortowane malejco : ${tab2[*]}";

}



liczba=0;
i=0;
echo "Podaj liczby do sortowania" 
echo "Aby zakonczyc wpisz e"
while [ "$liczba" != 'e' ] 
do
read liczba
if [ $liczba = "e" ]
		then 
		echo "koniec wpisywania "
	else
		tab[$i]="$liczba"
		tab1[$i]="$liczba"
		i=$i+1
	fi	
done
echo "Liczby: ${tab[*]}";
echo "Liczby: ${tab1[*]}";
sortowanie_rosnaco ${tab[*]}
sortowanie_malejaco ${tab1[*]}


