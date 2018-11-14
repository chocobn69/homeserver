#!/bin/env sh

docker pull znc:1.7
docker rm -f znc
docker run --name znc -d -p 16969:6697 -v $HOME/znc/.znc:/znc-data znc
