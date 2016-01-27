#!/bin/bash

for f in *.f; do
    gfortran -fsyntax-only -std=extra-legacy $f &> /dev/null
    if [ $? -eq 0 ]
    then
        echo -e "passed syntax check | $f"
    else
        echo -e "\E[1;31mfailed syntax check\E[0m | $f"
    fi
done
