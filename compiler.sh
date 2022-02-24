#!/bin/bash
name=$( basename "$1" )
gcc -Wall -Werror -Wextra $name.c -o $name
cd ..
python3 materials/linters/cpplint.py --extensions=c src/$name.c
