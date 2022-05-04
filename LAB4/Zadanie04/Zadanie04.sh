#!/bin/bash 

tablica1=(0 1 2 3 4 5 6 7 8 9 10);

echo "${tablica1[@]}";



for ((i=1; $i<=10000000; i++ ));

do

echo "Podaj co chcesz zrobic"
echo "[1] - dodawanie elementu do tablicy"
echo "[2] - usuniecie elementu z tablicy"
echo "[3] - koniec tablicy"
read number
case $number in
	1) 
		echo "Wybrales dodanie elementu do tablicy"

		echo "Podaj element tablicy ktory chcesz dodac"
		read numer_tablicy

		echo "Podaj wartosc dla tego elementu"
		read wartosc

		tablica1[numer_tablicy]=$wartosc

		echo "${tablica1[@]}";;

	2)	
		echo "Wybrales element do usuniecia z tablicy"
		
		echo "Podaj element tablicy, ktory chcesz usunac"		
		read numer_tablicy
		
		echo "Zostanie usuniety element o wartosci:"
		echo "${tablica1[numer_tablicy]}"

		unset tablica1[numer_tablicy]
		echo "${tablica1[@]}";;


	3) 	
		echo "Koniec dodawania i odejmowania elementow"
		echo "Ostateczna tabela:"
		echo "${tablica1[@]}"
		i=100000000

esac

done
