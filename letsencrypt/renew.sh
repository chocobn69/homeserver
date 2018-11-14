#!/bin/env sh
sudo certbot certonly --config-dir /home/choco/letsencrypt --work-dir /home/choco/letsencrypt --logs-dir /home/choco/letsencrypt -d home.choco-bn.net --standalone
