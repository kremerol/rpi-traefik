#FROM hypriot/rpi-alpine:3.5
FROM arm32v7/debian
ADD https://github.com/containous/traefik/releases/download/v1.3.7/traefik_linux-arm /traefik
RUN apt-get update &&\
    apt-get -y upgrade &&\
    apt-get -y install ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
