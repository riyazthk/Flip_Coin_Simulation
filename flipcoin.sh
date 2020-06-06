#! /bin/bash 
hea=0
tai=0
i=0
j=0
coin=$((RANDOM%2))
   while [ $coin -gt -1 ]
   do
    coin=$((RANDOM%2))

    if [[ $coin -eq 0 ]]
    then
      hea=$(($hea+1))
    else
      tai=$(($tai+1))
    fi
    echo "$hea"
    echo "$tai"
    if [[ $hea -ge 21 && $tai -ge 21 ]]
    then
        if [[ $hea -gt $tai ]]
        then
           val=$(($hea - $tai))
        else
           val=$(($tai - $hea))
        fi
        if [[ $hea -eq $tai ]]
        then
           continue
        elif [[ $hea -gt $tai && $val -ge 2 ]]
        then
           echo "head is winner"
           echo "no of times simulate head is $hea"
           break
       else
          if [[ $val -ge 2 ]]
          then
             echo "tail is winner"
             echo "no of times simulate tail is $tai"
             break
          fi
       fi
   fi
   done
