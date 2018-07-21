#!/usr/bin/env bash

uid=$(id -u)

USER=openmw
NEW_HOME=/home/$USER
MORROWIND_PATH=$1

nvidia-docker run -it --rm \
    --network=host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    -v $HOME/.Xauthority:$NEW_HOME/.Xauthority \
    -e XAUTHORITY=$NEW_HOME/.Xauthority \
    -v /run/user/$uid/pulse:/run/user/1000/pulse \
    --privileged \
    -v $MORROWIND_PATH:$NEW_HOME/Morrowind \
    -v $HOME/.config/openmw:$NEW_HOME/.config/openmw \
    -v $HOME/.local/share/openmw:$NEW_HOME/.local/share/openmw \
    --name openmw \
    openmw
