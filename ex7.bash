#!/bin/bash
shopt -s extglob
mkdir -p old 
cp +([0-9])*.txt old/
rename 's/\.txt$/\.old/' old/* # Not part of coreutils, may need installing
