#FROM hypriot/rpi-alpine:3.5
FROM arm32v6/alpine
ADD https://github.com/containous/traefik/releases/download/v1.3.7/traefik_linux-arm /traefik
RUN apk upgrade --no-cache &&\
      apk add --no-cache ca-certificates &&\
      chmod +x /traefik
    
##FROM arm32v7/ubuntu:xenial -> NOK :(
#FROM multiarch/ubuntu-core:armhf-wily
#ADD https://github.com/containous/traefik/releases/download/v1.3.7/traefik_linux-arm /traefik
#RUN apt-get update &&\
#    apt-get -y upgrade &&\
#    apt-get -y install ca-certificates &&\
#    chmod +x /traefik

EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
