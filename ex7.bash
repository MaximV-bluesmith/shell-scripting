#!/bin/bash
mkdir -p old 
cp {0..11}.txt old/
rename 's/\.txt$/\.old/' old/*
