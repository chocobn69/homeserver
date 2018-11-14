#!/bin/env sh
docker rm -f samba

docker pull stanback/alpine-samba

docker run -dt \
	-v $PWD/smb.conf:/etc/samba/smb.conf \
	-v /home/choco/datas:/share \
	-p 445:445 \
	--name samba \
	--restart=always \
	stanback/alpine-samba
