@echo off
setlocal
set NGINX_HOME=C:\home\wamp\nginx-1.7.10
%NGINX_HOME%\nginx.exe -p %NGINX_HOME% %*
