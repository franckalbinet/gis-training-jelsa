#!/bin/bash

mkdir jelsa-gis

cp -R ../data jelsa-gis
cp -R ../pdf jelsa-gis
cp -R ../ppt jelsa-gis
cp -R ../resources jelsa-gis
cp -R ../src jelsa-gis

zip -r jelsa-gis.zip ../jelsa-gis
rm -r jelsa-gis
