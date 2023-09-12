#!/bin/sh
# Gets the current users shell from /etc/passwd
grep '$USER' /etc/passwd | cut -d":" -f 7
