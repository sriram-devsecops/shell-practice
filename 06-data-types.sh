#!/bin/bash

NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date)
echo "Script executed at $(date)"
SUM=$(($NUMBER1+$NUMBER2))

echo "Sum of $NUMBER1 and $NUMBER2 : $SUM"