#!/bin/sh

tr -d '\r' < $1 > $2 # Removes all instances of \r, not just in \r\n
