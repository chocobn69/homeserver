#!/bin/env bash

sudo cryptsetup open /dev/mapper/Datas1Vol-cryptdatas datas
sudo mount /dev/mapper/datas /home/choco/datas
