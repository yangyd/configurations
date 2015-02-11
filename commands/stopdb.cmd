@echo off
setlocal
call %~dp0postgres.cmd -q
pg_ctl -D "C:\home\wamp\pgdata3" stop -m fast
