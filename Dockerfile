FROM ubuntu:16.04
MAINTAINER Mohamed Saad Ibn Seddik <ms.ibnseddik@gmail.com>

RUN apt update \
    && apt upgrade -y --no-install-recommends \
    && apt install -y --no-install-recommends \
        g++-4.9-arm-linux-gnueabihf \
        distcc \
    && apt autoremove -y \
    && apt clean

EXPOSE 3632

ENTRYPOINT ["distccd"]
CMD ["--no-detach", \
     "--daemon", \
     "--log-stderr", \
     "--allow", "0.0.0.0"]
