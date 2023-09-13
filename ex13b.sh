#!/bin/sh

# finds all files with ending in ".html", and finds the ones that end in "/index.html" and "/contents.html"
find / -name "*.html" -print | grep "/index.html$" 
find / -name "*.html" -print | grep "/contents.html$"

# Uses backticks as a subshell to record all the files ending with ".html", then search the variable for particular files
HTML_FILES_BACKTICK=`find / -name "*.html" -print`
echo "$HTML_FILES_BACKTICK" | grep "/index.html$"
echo "$HTML_FILES_BACKTICK" | grep "/contents.html$"

# Uses $() to spawn subshell to record all the files ending with ".html", then search the variable for particular files
HTML_FILES_DOLLAR=$(find / -name "*.html" -print)
echo "$HTML_FILES_DOLLAR" | grep "/index.html$"
echo "$HTML_FILES_DOLLAR" | grep "/contents.html$"

# Does not hide error messages, as those are written into STDERR, not SDOUT
