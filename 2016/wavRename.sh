#!/bin/bash

for wav in ./*.wav
do
    newname=$(echo $name | sed 's/ik\([0-9]*\)-\([0-9]*\)/IK1-\1_\2-01/')
    mv $name $newname
done
