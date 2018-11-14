#!/bin/env bash

docker pull plexinc/pms-docker
docker rm -f plex
docker run \
	-d \
	--name plex \
	--network=host \
	-e TZ="Europe/Paris" \
	-e PLEX_CLAIM="XXX" \
	-e PLEX_UID=1000 \
	-e PLEX_GID=985 \
	--restart=always \
	-v /home/choco/plex/config:/config \
	-v /home/choco/plex/temp:/transcode \
	-v /home/choco/datas:/data \
	plexinc/pms-docker
