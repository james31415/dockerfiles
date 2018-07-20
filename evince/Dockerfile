# Evince in a container
#
# INFILE=
# OUTFILE=
# if [ -n "$1" ]; then
#     INFILE=$(realpath "$1")
#     OUTFILE=/root/Documents/$(basename "$1")
# fi
# 
# VOLUME=
# if [ -n "$INFILE" ] && [ -n "$OUTFILE" ]; then
#     VOLUME="-v $INFILE:$OUTFILE"
# fi
# 
# docker run \
#     --network=host \
#     -v $HOME/Documents/:/root/Documents/ \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -v $HOME/.Xauthority:/root/.Xauthority \
#     $VOLUME \
#     -e DISPLAY \
#     -e XAUTHORITY=/root/.Xauthority \
#     evince $OUTFILE

FROM alpine:latest
LABEL maintainer "James Hall <james31415@gmail.com>"

RUN apk --no-cache add \
 --repository https://dl-3.alpinelinux.org/alpine/edge/community \
 evince \
 ttf-opensans

ENTRYPOINT ["/usr/bin/evince"]

