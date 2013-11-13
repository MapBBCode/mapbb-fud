#!/bin/sh
DISTFILE=mapbbcode-latest.zip
TARGET=dist/mapbbcode_fud.zip
DIR=mapbbcode

wget -nv http://mapbbcode.org/dist/$DISTFILE
unzip -q $DISTFILE
rm $DISTFILE
mv mapbbcode js

mkdir $DIR
cp mapbbcode.plugin $DIR
mv js $DIR
rm -r $DIR/js/lang
cp b_map.gif $DIR/js/images

rm $TARGET
zip -qr $TARGET $DIR
rm -r $DIR
