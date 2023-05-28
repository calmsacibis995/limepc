#!/bin/bash

#  gitrev.sh
#  
#
#
#  Get the Git revision number and apply
#  it to the built executable.

VC=`git rev-parse --short HEAD`

echo $VC| \
awk ' {
    gitrev = $1;
    printf "const char gitrev[] = \"%s\\n\";\n", gitrev;
}'
