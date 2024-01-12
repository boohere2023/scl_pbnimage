#! /usr/bin/bash
docker commit $(docker container ls  | grep 'aapanel' | awk '{print $1}') sclbo/`hostname`:`date +%Y%m%d`
docker push sclbo/`hostname`:`date +%Y%m%d`
docker image rm sclbo/`hostname`:`date +%Y%m%d`
