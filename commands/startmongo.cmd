@echo off
setlocal
call %~dp0mongodb.cmd -q
set MONGODBPATH=C:\home\wamp\mongodata1
start mongod --dbpath %MONGODBPATH%\db --config %MONGODBPATH%\mongo.yaml
