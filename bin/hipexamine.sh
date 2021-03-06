#!/bin/bash

#usage : hipexamine.sh DIRNAME [hipify.pl options]

# Generate HIP stats (LOC, CUDA->API conversions, missing functionality) for all the code files 
# in the specified directory.


SCRIPT_DIR=`dirname $0`
SEARCH_DIR=$1
shift
$SCRIPT_DIR/hipify -no-output -print-stats "$@" `$SCRIPT_DIR/findcode.sh $SEARCH_DIR`
