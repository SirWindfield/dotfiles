#!/bin/sh
#
# Reads in a key-value file and exports its content as environment variables.
# The file has to be sourced!
#
# @param The key-value file.

if [ -f $1 ]; then
    export $(grep -v '^#' $1 | xargs | envsubst)
fi
