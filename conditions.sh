#!/bin/bash
NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "given number $NUMBER is greater than 10"
else
    echo "Not"
fi