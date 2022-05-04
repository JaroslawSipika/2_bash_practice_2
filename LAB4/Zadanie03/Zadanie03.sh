#!/bin/bash

tablica2=$(seq 1 10);
for i in "${tablica2[*]}";
	do
		echo "$i";
	done

trzy_liczby=${tablica2[*]:2:5};
echo "wyciagniete liczby: ${trzy_liczby[*]}";
