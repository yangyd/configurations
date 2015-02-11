@echo off
:: set JAVA_HOME=C:\home\wamp\jdk1.7.0_71
set GLASSFISH_HOME=C:\home\wamp\glassfish3
set DERBY_HOME=%GLASSFISH_HOME%\javadb
set PATH=%PATH%;%GLASSFISH_HOME%\bin;%GLASSFISH_HOME%\glassfish\bin;%DERBY_HOME%\bin;

if "%1"=="-q" goto done
title Glassfish 3
echo Path set up with Glassfish 3 environment
echo Current PATH:
echo %PATH%
:done
