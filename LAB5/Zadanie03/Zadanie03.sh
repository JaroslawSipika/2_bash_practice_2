#!/bin/bash
function zlicz 
{
wc -w $1
}

echo "podaj sciezke do pliku"
read plik

zlicz "$plik"
