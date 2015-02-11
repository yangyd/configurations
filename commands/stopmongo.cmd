@echo off
setlocal
call %~dp0mongodb.cmd -q
mongo admin --eval "db.shutdownServer()"
