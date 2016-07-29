FROM ubuntu:16.04
MAINTAINER Mohamed Saad Ibn Seddik <ms.ibnseddik@gmail.com>

RUN apt update \
    && apt upgrade -y --no-install-recommends
RUN apt install -y --no-install-recommends \
        g++-4.9-arm-linux-gnueabihf \
        distcc \
    && apt autoremove -y \
    && apt clean

#ADD etc/default/distcc /etc/default/distcc

# RUN distccd --daemon --allow 1.0.0.0/0 --verbose --no-detach --log-stderr
