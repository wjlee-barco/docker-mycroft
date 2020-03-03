#!/bin/bash

echo "PWD"=$PWD
XDG_RUNTIME_DIR=/run/user/$(id -u)
echo "XDG_RUNTIME_DIR"=${XDG_RUNTIME_DIR}

sudo docker run -v $PWD:/root/.mycroft --device /dev/snd -e DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket -e PULSE_SERVER=unix:/run/user/0/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:/run/user/0/pulse/native -v ~/.config/pulse:/root/.config/pulse -p 8181:8181 --name mycroft mycroftai/docker-mycroft
sudo chown -R gitlab-runner:gitlab-runner $PWD/*
 
exit 0
