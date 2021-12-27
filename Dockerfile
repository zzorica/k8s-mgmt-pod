FROM debian:stable-slim
RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    curl dnsutils iputils-ping vim traceroute iproute2 wget2 telnet \
    && rm -rf /var/lib/apt/lists/*
COPY files/myip /usr/bin/
COPY .bashrc /root/.bashrc
CMD bash
