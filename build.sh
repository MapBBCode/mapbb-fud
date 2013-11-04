#!/bin/sh
TARGET=dist/mapbbcode_fud.zip
DIR=mapbbcode
MAPBBCODE=js
mkdir $DIR
cp mapbbcode.plugin $DIR

if [ ! -e $MAPBBCODE ]; then
git clone https://github.com/MapBBCode/mapbbcode.git $MAPBBCODE
fi
cd $MAPBBCODE
git pull origin master
cd ..

mkdir $DIR/js
cp -r $MAPBBCODE/dist/lib/* $DIR/js
cp $MAPBBCODE/dist/mapbbcode.js $DIR/js
cp $MAPBBCODE/dist/mapbbcode-config.js $DIR/js
cp $MAPBBCODE/dist/mapbbcode-window.html $DIR/js
cp b_map.gif $DIR/js/images
rm $TARGET
zip -qr $TARGET $DIR
rm -r $DIR
