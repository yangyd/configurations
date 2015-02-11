@echo off
setlocal
call %~dp0postgres.cmd -q
start pg_ctl -D "C:\home\wamp\pgdata3" start
