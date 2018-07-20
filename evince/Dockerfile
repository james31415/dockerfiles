# Evince in a container
#
# docker run -it \
#     --network=host \
#     -v $HOME/Documents/:/root/Documents/ \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -v $HOME/.Xauthority:/root/.Xauthority \
#     -v "$1":/root/Documents/$(basename "$1") \
#     -e DISPLAY \
#     -e XAUTHORITY=/root/.Xauthority \
#     evince "/root/Documents/$(basename "$1")"
#

FROM alpine:latest
LABEL maintainer "James Hall <james31415@gmail.com>"

RUN apk --no-cache add \
 --repository https://dl-3.alpinelinux.org/alpine/edge/community \
 evince \
 ttf-opensans

ENTRYPOINT ["/usr/bin/evince"]

