# rpi-traefik [![Build Status](https://travis-ci.org/kremerol/rpi-traefik.svg?branch=master)](https://travis-ci.org/hypriot/rpi-traefik)

Build an ARM32v6 (pi1) and ARM32v7 (pi2, pi3, odroid, etc.) docker container for [Traefik](https://traefik.io/):

1. ARM32v6 is based on [Alpine](http://alpine.org/)
2. ARM32v7 is based on [Ubuntu](http://ubuntu.com/)

## Run it

For eg:

```
docker run -d -p 8080:8080 -p 80:80 -p  443:443 -v $PWD/traefik.toml:/etc/traefik/traefik.toml kremerol/armv32v6-traefik
docker run -d -p 8080:8080 -p 80:80 -p  443:443 -v $PWD/traefik.toml:/etc/traefik/traefik.toml kremerol/armv32v7-traefik
```

## Docker images download links:
* From docker store: https://store.docker.com/profiles/kremerol
* From docker hub: https://hub.docker.com/u/kremerol/

## Blog post

Inspired from Hypriot: 
* [Microservices Bliss with Docker and Traefik](http://blog.hypriot.com/post/microservices-bliss-with-docker-and-traefik/)

## Documentation

Read the [Traefik documentation](https://docs.traefik.io/) for more details.
