#!/bin/bash

cp ../img-origin/*.PNG .
for i in $( ls *.PNG ); do
  filename=$(basename "$i")
  filename="${filename%.*}"
  convert $i -resize 750x750 $i
done


