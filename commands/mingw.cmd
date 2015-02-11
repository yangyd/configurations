@echo off
set PATH=C:\home\wamp\mingw64\bin;%PATH%

if "%1"=="-q" goto done
title MinGW64
echo Path set up with MinGW32-64bit environment
echo Current PATH:
echo %PATH%
:done
