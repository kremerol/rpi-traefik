FROM arm32v7/ubuntu:xenial
COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static

ADD https://github.com/containous/traefik/releases/download/v1.3.7/traefik_linux-arm /traefik
RUN apt-get update &&\
    apt-get -y upgrade &&\
    apt-get -y install ca-certificates &&\
    chmod +x /traefik

EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
