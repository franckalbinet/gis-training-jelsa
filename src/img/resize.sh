#!/bin/bash

cp ../img-origin/*.PNG .
for i in $( ls *.PNG ); do
  filename=$(basename "$i")
  filename="${filename%.*}"
  convert $i -resize 600x600 $i
done


