#!/bin/bash

for i in {1..100}
do
   echo $i
   break when $i -eq 22
done