#!/bin/bash

sudo docker exec --tty mycroft env TERM=xterm env
sudo docker exec --tty mycroft env TERM=xterm pactl info
 
exit 0
