@echo off
set PATH=C:\home\wamp\mongo\bin;%PATH%

if "%1"=="-q" goto done
title mongoDB 2.6
echo Path set up with mongoDB 2.6 environment
echo Current PATH:
echo %PATH%
:done
