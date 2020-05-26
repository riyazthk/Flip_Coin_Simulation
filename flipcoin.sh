#! /bin/bash -x
head=0
tail=0
coin=$((RANDOM%2))
   while [ $coin -gt -1 ]
   do
    coin=$((RANDOM%2))
   
    if [[ $coin -eq 0 ]]
    then
       $((head++))
    else
       $((tail++))
    fi

    if [[ $head -ge 21 && $tail -ge 21 ]]
    then
        if [[ $head -eq $tail ]]
        then
           echo "both are tied"
           break
        elif [[ $head -gt $tail ]]
        then
           echo "head is winner"
           echo "no of times simulate head is $head"
           break
       else
          echo "tail is winner"
          echo "no of times simulate tail is $tail"
          break
       fi   
   fi
   done
