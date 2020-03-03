#!/bin/bash

sudo docker exec --tty mycroft env TERM=xterm env
sudo docker exec --tty mycroft env TERM=xterm pactl info
sudo docker exec --tty mycroft env TERM=xterm pulseaudio -vvvv
 
exit 0
