FROM base/archlinux:latest

LABEL maintainer "James Hall <james31415@gmail.com>"

RUN pacman -Sy && \
    pacman -S --noconfirm \
        gimp

ENTRYPOINT [ "gimp" ]
