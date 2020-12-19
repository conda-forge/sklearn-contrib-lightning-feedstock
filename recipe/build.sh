#!/usr/bin/env bash
make clean
rm -fv lightning/impl/randomkit/random_fast.cpp
$PYTHON -m pip install . --no-deps -vv
