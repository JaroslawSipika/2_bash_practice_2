#!/bin/bash

tablica1=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30);

echo "${tablica1[@]}";

tablica2=$(seq 1 30);
for i in "${tablica2[*]}";
	do
		echo "$i";
	done

