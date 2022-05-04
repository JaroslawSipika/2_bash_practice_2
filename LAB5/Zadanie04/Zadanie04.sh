#!/bin/bash

function zapisywanie
{
if [ ! -f ./text.txt ]; then
	echo "Tworzenie pliku z tekstem"
	touch ./text.txt
else
    	echo "Zapisywanie tekstu do pliku "
fi
	echo "$1" > ./text.txt

}

function usun
{
sed -e "s/$1/ /g" -i ./text.txt
}

echo "Napisz text"
read text
zapisywanie "$text"
echo "Podaj część tekstu do usuniecia "
read usunt

echo "Przed i po usunieciu"

cat text.txt
usun "$usunt"
cat text.txt
