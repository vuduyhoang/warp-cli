FROM ubuntu:18.04
#netbase: runtime requirement for warp-svc (nft firewall protocols ipv6-icmp)
RUN apt-get update && apt-get install -y \
    gpg curl \
    netbase
RUN curl https://pkg.cloudflareclient.com/pubkey.gpg | gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ bionic main" | tee /etc/apt/sources.list.d/cloudflare-client.list
RUN apt-get update && apt-get -y install cloudflare-warp
RUN mkdir /var/log/cloudflare-warp /var/lib/cloudflare-warp /var/run/cloudflare-warp
#ADD warp-cli.sh .
#RUN chmod +x warp-cli.sh
#ENTRYPOINT [ "./warp-cli.sh" ]
#RUN rm -rf /var/lib/apt/lists/*
