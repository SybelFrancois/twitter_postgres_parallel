#!/bin/sh


for file in $(find data); do
    sh load_denormalized.sh $file
done
