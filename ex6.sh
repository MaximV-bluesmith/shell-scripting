#!/bin/sh
echo -n "Select Surname: "
read SURNAME
grep -E "^*\| $SURNAME \|" addressBook.txt
