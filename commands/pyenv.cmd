@echo off
set PATH=C:\Python34;C:\Python34\Scripts;%PATH%

if "%1"=="-q" goto done
title Python 3.4
echo Path set up with Python 3 environment
echo Current PATH:
echo %PATH%
:done
