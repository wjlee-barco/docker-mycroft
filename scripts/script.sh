#!/bin/bash

echo "PWD"=$PWD
XDG_RUNTIME_DIR=/run/user/$(id -u)
echo "XDG_RUNTIME_DIR"=${XDG_RUNTIME_DIR}

sudo docker run -v $PWD:/root/.mycroft --device /dev/snd -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native -v ~/.config/pulse/cookie:/root/.config/pulse/cookie -p 8181:8181 --name mycroft mycroftai/docker-mycroft
sudo chown -R gitlab-runner:gitlab-runner $PWD/*
 
exit 0
