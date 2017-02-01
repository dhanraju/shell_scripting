#!/bin/bash
set -x

echo "***** Demonstrating std in, out & err *****"

# stdin (0<) demo to list current working directory files.
# Current working directory "." is passing as input to "ls" command.
#ls 0< .
#0<&- # Close stdin

# Redirecting stdout to stderr: Output of "ls ." command to stderr (>>2)
ls . 1>>

# ls . 2>>1

# Ref: http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html
