
@echo off
set PATH=%USERPROFILE%\.local\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;

set VIM=C:\Users\Yuedong\apps\vim-7.4.1770

set PATH=%PATH%;%VIM%\bin;%JAVA_HOME%\bin

set PATH=%PATH%;C:\Users\Yuedong\AppData\Local\Programs\Python\Python35-32
set PATH=%PATH%;C:\Program Files\7-Zip

doskey ll=dir /a $*
doskey mv=move $*
doskey cp=xcopy /I /H /V /K /F $*
doskey rm=del /p $*
doskey here=explorer .
doskey cat=type $*
doskey pwd=cd
doskey date=cmd /C "date /t && time /t"

echo on

