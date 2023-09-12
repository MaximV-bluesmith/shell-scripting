#!/bin/sh

grep '^r' /etc/passwd | cut -d':' -f1
