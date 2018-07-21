# openmw in a container
#
# #!/usr/bin/env bash
# 
# uid=$(id -u)
# 
# USER=openmw
# NEW_HOME=/home/$USER
# MORROWIND_PATH=$1
# 
# nvidia-docker run -it --rm \
#     --network=host \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -e DISPLAY \
#     -v $HOME/.Xauthority:$NEW_HOME/.Xauthority \
#     -e XAUTHORITY=$NEW_HOME/.Xauthority \
#     -v /run/user/$uid/pulse:/run/user/1000/pulse \
#     --privileged \
#     -v $MORROWIND_PATH:$NEW_HOME/Morrowind \
#     -v $HOME/.config/openmw:$NEW_HOME/.config/openmw \
#     -v $HOME/.local/share/openmw:$NEW_HOME/.local/share/openmw \
#     --name openmw \
#     openmw

FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu18.04

LABEL maintainer "James Hall <james31415@gmail.com>"

ENV UNAME openmw

RUN apt-get update

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:openmw/openmw && apt-get update

RUN apt-get install -y \
    pulseaudio-utils \
    openmw

RUN export UNAME=$UNAME UID=1000 GID=1000 && \
    mkdir -p "/home/${UNAME}" && \
    echo "${UNAME}:x:${UID}:${GID}:${UNAME} User,,,:/home/${UNAME}:/bin/bash" >> /etc/passwd && \
    echo "${UNAME}:x:${UID}:" >> /etc/group && \
    mkdir -p /etc/sudoers.d && \
    echo "${UNAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${UNAME} && \
    chmod 0440 /etc/sudoers.d/${UNAME} && \
    chown ${UID}:${GID} -R /home/${UNAME} && \
    gpasswd -a ${UNAME} audio

COPY pulse-client.conf /etc/pulse/client.conf

ENV HOME /home/$UNAME

USER $UNAME

ENTRYPOINT [ "/usr/games/openmw" ]
