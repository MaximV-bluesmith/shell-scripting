#!/bin/sh
MYNAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5` # Gets the current users "Comment" from /etc/passwd
echo $MYNAME
