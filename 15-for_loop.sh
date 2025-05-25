#!/bin/bash

for i in {1..100}
do
   if [ $i -eq 0 ]; 
     then
     echo "Condition met, breaking the loop"
     break
     fi
     echo $i
done