#!/bin/bash

NUMBER=$1

if [ $NUMBER -ne 10 ]
then
    echo "10 is not equal to :$NUMBER"
else
    echo "10 is equal to :$NUMBER"
fi