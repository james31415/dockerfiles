# docker run -d --rm \
#     --network=host \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -e DISPLAY \
#     -v $HOME/.Xauthority:/root/.Xauthority \
#     -e XAUTHORITY=/root/.Xauthority \
#     -v $HOME/working:/root/working \
#     --name gimp \
#     gimp

FROM base/archlinux:latest

LABEL maintainer "James Hall <james31415@gmail.com>"

RUN pacman -Sy && \
    pacman -S --noconfirm \
        gimp

ENTRYPOINT [ "gimp" ]
