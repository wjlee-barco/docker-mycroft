#!/bin/bash

sudo docker stop  $(sudo docker container ls -aq --filter name=mycroft*);sudo docker container prune -f; sudo docker image prune -a -f
  
exit 0
