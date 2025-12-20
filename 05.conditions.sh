#!/bin/bash

NUMBER=$1

if [ &NUMBER -ne 10 ]
then
echo "10 is greater than : $NUMBER"
else
echo "10 is less than : $NUMBER"
fi