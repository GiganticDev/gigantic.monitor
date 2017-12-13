FROM ubuntu:latest

RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates \
    lib32gcc1 \
    net-tools \
    lib32stdc++6 \
    lib32z1 \
    lib32z1-dev \
    curl 

RUN mkdir -p /home/daemon/steamcmd  && \
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - -C /home/daemon/steamcmd && \
    chown -R daemon:daemon /home/daemon

WORKDIR /home/daemon/steamcmd
USER daemon

ADD scripts/steam.sh /home/daemon/steamcmd/steam.sh
CMD ./steam.sh
