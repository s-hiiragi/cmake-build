@echo off

call setting.cmd

docker run -it --net=host %REPO%:%TAG%

