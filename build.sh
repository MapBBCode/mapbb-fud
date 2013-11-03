#!/bin/sh
TARGET=dist/mapbbcode_fud.zip
DIR=mapbbcode
mkdir $DIR
cp mapbbcode.plugin $DIR
cp -r js $DIR
rm $TARGET
zip -qr $TARGET $DIR
rm -r $DIR
