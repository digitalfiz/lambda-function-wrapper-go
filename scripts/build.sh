#!/bin/bash
set -e

CUR_DIR=`pwd`
SRC_DIR="$CUR_DIR/src"



echo "Compiling..."
cd $SRC_DIR
gox -osarch="linux/amd64" -output="$CUR_DIR/build/bin/application"
cd $CUR_DIR

echo "Copying the node files to the build folder..."
cp index.js build/index.js
cp lambda-function build/lambda-function