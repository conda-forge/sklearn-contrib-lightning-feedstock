:: Remove previously cythonized files
for /f "delims=" %%f in ('dir /s /b lightning') do if "%%~xf"==".cpp" del "%%f"
:: Remove PKG-INFO to trigger cythonize
del PKG-INFO
:: Remove egg-info because SOURCES.txt contains hard-coded path from dev machine
rd /s /q sklearn_contrib_lightning.egg-info
%PYTHON% -m pip install . --no-deps -vv
