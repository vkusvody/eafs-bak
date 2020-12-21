#!/bin/bash

# change IK1-150802_1PN-02
# to IK1-150802_1PN2
for name in ./*
do
    newname=$(echo $name | sed 's/IK1-\([0-9]*\)_\([0-9A-Za-z]*\)-0\([1-5]\)/IK1-\1_\2\3/')
    git mv $name $newname
done

for eaf in ./*.eaf
do
    sed -i -e 's/IK1-\([0-9]*\)_\([0-9A-Za-z]*\)-0\([1-5]\)/IK1-\1_\2\3/g' $eaf # change media file names within eafs
    # sed -i -e 's/\.\/vid//' $eaf # locate the video in the same dir instead of ../vid/
done

