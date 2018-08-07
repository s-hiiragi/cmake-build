@echo off

call setting.cmd

docker build -t "%REPO%:%TAG%" .

