@echo off
set PATH=C:\home\wamp\pgsql\bin;%PATH%

if "%1"=="-q" goto done
title PostgreSQL 9.4
echo Path set up with PostgreSQL 9.4 environment
echo Current PATH:
echo %PATH%
:done
