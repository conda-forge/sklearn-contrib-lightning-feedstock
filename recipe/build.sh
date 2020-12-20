#!/usr/bin/env bash
# Remove previously cythonized files
find lightning -name \*.cpp -delete
# Remove PKG-INFO to trigger cythonize
rm PKG-INFO
# Remove egg-info because SOURCES.txt contains hard-coded path
rm -r sklearn_contrib_lightning.egg-info
$PYTHON -m pip install . --no-deps -vv
