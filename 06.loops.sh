#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

for i in ($1)
do
echo -e "$G print natural numbers: $R $i"
done