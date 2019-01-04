FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y time procps curl net-tools dnsutils tcpdump iperf \
    && rm -rf /var/lib/apt/lists/*
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
