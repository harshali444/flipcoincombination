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

for ((i=0;i<=4;i++))
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))

        if [[ $flip1 -eq $H && $flip2 -eq $H ]]
        then
                echo "HH"
                percent=$((HH*4/100))
                echo $percent
        elif [[ $flip1 -eq $H && $flip2 -eq $T ]]
        then
                echo "HT"
                 percent=$((HT*4/100))
                echo $percent

        elif [[ $flip1 -eq $T && $flip2 -eq $T ]]
        then
                echo "TT"
                 percent=$((TT*4/100))
                echo $percent

        elif [[ $flip1 -eq $T && $flip2 -eq $H ]]
        then
                echo "TH"
                 percent=$((TH*10/100))
                echo $percent

        fi
done
declare -A doublet
doublet[HH]=1
doublet[HT]=1
doublet[TH]=1
doublet[TT]=1
echo ${!doublet[@]}

for ((i=0;i<=8;i++))
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))
        flip3=$((RANDOM%2))

        if [[ $flip1 -eq $H && $flip2 -eq $H && $flip3 -eq $H ]]
        then
                echo "HHH"
                 percent=$(((HHH/8)*100))
                echo $percent

        elif [[ $flip1 -eq $H && $flip2 -eq $H && $flip3 -eq $T ]]
        then
                echo "HHT"
                 percent=$(((HHT/8)*100))
                echo $percent

        elif [[ $flip1 -eq $H && $flip2 -eq $T && $flip3 -eq $H ]]
        then
                echo "HTH"
                 percent=$(((HTH/8)*100))
                echo $percent

        elif [[ $flip1 -eq $H && $flip2 -eq $T && $flip3 -eq $T ]]
        then
                echo "HTT"
                 percent=$(((HTT/8)*100))
                echo $percent

        elif [[ $flip1 -eq $T && $flip2 -eq $T && $flip3 -eq $T ]]
        then
                echo "TTT"
                 percent=$(((TTT/8)*100))
                echo $percent

        elif [[ $flip1 -eq $T && $flip2 -eq $T && $flip3 -eq $H ]]
        then
                echo "TTH"
                echo $percent

        elif [[ $flip1 -eq $T && $flip2 -eq $H && $flip3 -eq $T ]]
        then
                echo "THT"
                 percent=$(((THT/8)*100))
                echo $percent

        elif [[ $flip1 -eq $T && $flip2 -eq $H && $flip3 -eq $H ]]
        then
                echo "THH"
                 percent=$(((THH/8)*100))
                echo $percent

        fi
done
declare -A triplet
triplet[HHH]=1
triplet[HHT]=1
triplet[HTH]=1
triplet[HTT]=1
triplet[TTT]=1
triplet[TTH]=1
triplet[THT]=1
triplet[THH]=1
echo ${!triplet[@]}

