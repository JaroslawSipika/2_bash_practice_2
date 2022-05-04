#!/bin/bash

numbers=($(seq 1 30));
echo "Liczby: ${numbers[*]}";
echo "${#numbers[@]}";
unset numbers[{20..30}];
echo "Liczby: ${numbers[*]}";
echo "${numbers[@]}";


