#!/bin/env sh

docker pull haugene/transmission-openvpn

docker rm -f torrent

docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d \
              -v /home/choco/datas/:/data \
              -v /etc/localtime:/etc/localtime:ro \
              -e OPENVPN_PROVIDER=XXX \
              -e OPENVPN_CONFIG=XXX \
              -e OPENVPN_USERNAME=XXX \
              -e OPENVPN_PASSWORD=XXX \
              -e WEBPROXY_ENABLED=false \
	      -e PUID=$(id -u) \
	      -e PGID=$(id -g) \
              -e LOCAL_NETWORK=192.168.1.0/24 \
	      --dns 8.8.8.8 --dns 8.8.4.4 \
              --log-driver json-file \
              --log-opt max-size=10m \
	      --name torrent \
	      --restart=always \
              -p 9091:9091 \
	      -p 51413:51413 \
              haugene/transmission-openvpn
