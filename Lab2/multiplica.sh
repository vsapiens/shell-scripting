#!/bin/bash


((mult = 1))
((remainder = 0))
(( i = 1))

LIMIT=0
read number
while [ "$number" != "$LIMIT" ]
do
    ((remainder = number % 10))
    ((mult *=  remainder))
    ((number /= 10))
done
((mult *= 2))

echo $mult