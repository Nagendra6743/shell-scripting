#!/bin/bash

for i in {1..100}
do
   if [ $i -eq 22 ] 
     then
     echo "$i"
     exit 1
     else
     echo "$i"
     fi
done