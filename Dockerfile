FROM debian:stretch
MAINTAINER Cube <kyb.6.granei@yandex.ru>

# Mostly based on https://github.com/teran/docker-yandex-disk

RUN apt-get update                                                      && \ 
    apt-get install -y wget                                             && \
    cd /tmp                                                             && \
    wget http://repo.yandex.ru/yandex-disk/yandex-disk_latest_amd64.deb && \
    dpkg -i yandex-disk_latest_amd64.deb                                && \
    apt-get clean                                                       && \
    rm yandex-disk_latest_amd64.deb                                     && \
    rm -rf /var/lib/apt/lists/*
 
ENTRYPOINT ["/usr/bin/yandex-disk"]
