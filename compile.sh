#!/bin/bash
set -e

gox -osarch="linux/amd64" -output="bin/application"