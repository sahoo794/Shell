#!/bin/bash
R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'

echo -e "$R hellow DevOps $N"
echo -e " $G print total number of elements : $#"
echo -e "$R script name : $0"
echo -e " $Y print total number of elements : $@"
