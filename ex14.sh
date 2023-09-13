#!/bin/sh
myfunc()
{
  echo "\$1 is $1" # Prints the first argument given to function
  echo "\$2 is $2"
  # cannot change $1 - we'd have to say:
  # 1="Goodbye Cruel"
  # which is not a valid syntax. However, we can
  # change $a:
  a="Goodbye Cruel" # Overwrites the global variable $a?
}
### Main script starts here
a=Hello
b=World
myfunc $a $b # Runs the function with the arguments $a and $b
echo "a is $a"
echo "b is $b"

myfunc 1 2 3 | tee out.log # Passes in 3 arguments, then both prints them to STDOUT, and writes to "out.log"
