
@echo off

set PATH=%USERPROFILE%\.local\bin;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%Systemroot%\System32\WindowsPowerShell\v1.0\;
set PATH=%AppData%\Zeon\bin;%PATH%

set PATH=%JAVA_HOME%\bin;%PATH%

set PYTHON_HOME=C:\Program Files\Python 3.5
set PATH=%PATH%;%PYTHON_HOME%;%PYTHON_HOME%\Scripts

:: set PATH=%PATH%;%SCALA_HOME%\bin
:: set PATH=%PATH%;%M2_HOME%\bin
:: set PATH=C:\home\wamp\mingw64\bin;%PATH%

doskey ll=dir /a $*
doskey mv=move $*
doskey cp=xcopy /I /V /K /F /H /J $*
doskey rm=del /P $*
doskey cat=type $*
doskey pwd=cd
doskey here=explorer .
doskey ps=tasklist
doskey sh=start $*
doskey cygwin=C:\home\wamp\cygwin\Cygwin.bat

:: cd %userprofile%\home

