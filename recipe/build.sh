#!/usr/bin/env bash
# Remove previously cythonized files
find lightning -name \*.cpp -delete
# Remove PKG-INFO to trigger cythonize
rm PKG-INFO
$PYTHON -m pip install . --no-deps -vv
