#!/bin/bash

for i in {1..100}
do
   if [ $i -eq 22 ] 
     then
     echo " Loop successfully broke at 22"
     else
     echo "Loop is not successful"
done