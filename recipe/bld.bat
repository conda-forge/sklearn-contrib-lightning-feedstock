make clean
del /f lightning\impl\randomkit\random_fast.cpp
%PYTHON% -m pip install . --no-deps -vv
