@echo off

echo #CONTAINERS

docker ps -a --format="table {{.ID}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}"

echo #IMAGES

docker images

