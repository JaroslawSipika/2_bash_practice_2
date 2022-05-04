#!/bin/bash

function zapis
{
if [ ! -f ./text.txt ]; then
	touch ./text.txt
else
    	echo
fi
	echo "$1" > ./text.txt
}


function zamiana
{
tr a-z A-z < ./text.txt
}


function usun
{
sed -e "s/$1/ /g" -i ./text.txt
}


function zamiana_liter
{
tr $1 $2 < ./text.txt
}

echo "Podaj tekst"
read text
zapis "$text"
echo ""
echo "Co chcesz zrobic "
echo "1) Zamiania tekstu na drukowane litery"
echo "2) Usunięcie tekstu"
echo "3) Zamiana liter"
read wybor

	case $wybor in

		1)
		zamiana
		;;


		2)
		echo "Podaj część tekstu do usuniecia "
		read usunt

		cat text.txt
		usun "$usunt"
		cat text.txt
		;;


		3)

		echo "podaj litere do zmiany "
		read do_zmiany
		echo "podaj litere na jaka zmienic "
		read zmiana_na
		echo "------------"
		cat text.txt
		zamiana_liter "$do_zmiany" "$zmiana_na" 
		;;


		*)
		echo "dane poza zakresem"
		;;

esac


