#!/bin/bash -x

H=1
T=0
flip=$((RANDOM%2))

if [[ $flip -eq $H ]]
then
	echo "head"
	percent=$(((H/10)*100))
	echo $percent
elif [[ $flip -eq $T ]]
then
	echo "tails"
	percent=$((($T/10)*100))
	echo $percent
fi
declare -A singlet
singlet[heads]=1
singlet[tails]=0
echo ${!singlet[@]}
