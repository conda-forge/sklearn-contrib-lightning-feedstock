:: Remove previously cythonized files
for /f "delims=" %%f in ('dir /s /b lightning') do if "%%~xf"==".cpp" del "%%f"
:: Remove PKG-INFO to trigger cythonize
del PKG-INFO
%PYTHON% -m pip install . --no-deps -vv
