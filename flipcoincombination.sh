
#!/bin/bash -x
for ((i=0;i<=4;i++))
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))

        H=1
        T=0
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

