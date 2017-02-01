#!/bin/bash
# Immediately exit if any command has a non-zero exit status.
set -e
# If any variable is not previously defined, return an error.
set -u

set -o pipefail
IFS=$'\n\t'


# Ref: http://redsymbol.net/articles/unofficial-bash-strict-mode/
