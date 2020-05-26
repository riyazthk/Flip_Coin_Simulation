#! /bin/bash -x
head=0
tail=0
coin=$((RANDOM%2))
   while [ $coin -gt 0 ]
   do
    if [[ $coin -eq 0 ]
    then
       head++
    else
       tail++
   done
