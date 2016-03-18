#!/bin/bash
set -e

CUR_DIR=`pwd`
SRC_DIR="$CUR_DIR/src"


# Making sure build dir exists
mkdir -p build


echo "Compiling..."
cd $SRC_DIR
gox -osarch="linux/amd64" -output="$CUR_DIR/build/bin/application"
cd $CUR_DIR

echo "Copying the node files to the build folder..."
cp index.js build/index.js
cp run build/run