#!/bin/sh

# arguments check
if [ $# -lt 1 ]; then
  echo "same2.sh requiers 2 string inputs" 1>&2
  exit 1
fi

if [ $1 = $2 ]; then
  echo "$1 $2 ok"
else
  echo "$1 $2 ng"
fi
