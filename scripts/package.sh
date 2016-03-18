#!/bin/bash
set -e

CUR_DIR=`pwd`
SRC_DIR="$CUR_DIR/src"

cd build
zip -r ../app.zip .
cd $CUR_DIR