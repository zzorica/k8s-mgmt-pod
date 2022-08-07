FROM debian:stable-slim
RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    curl dnsutils iputils-ping vim traceroute iproute2 wget2 telnet postgresql-client mariadb-client ca-certificates whois tcpdump \
    && rm -rf /var/lib/apt/lists/*
COPY scripts/* /usr/bin/
COPY files/.bashrc /root/.bashrc
CMD ["bash"]
