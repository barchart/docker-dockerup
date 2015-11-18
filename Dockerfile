#
# Dockerup management container
#
# docker-build properties:
# TAG=barchart/dockerup:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

ENV HOME /etc/dockerup

RUN pip install dockerup

ADD dockerup.conf /etc/dockerup/

VOLUME ["/etc/dockerup/.dockercfg", "/var/run/docker.sock", "/var/cache/dockerup", "/etc/dockerup/containers.d"]

ENTRYPOINT ["/usr/local/bin/dockerup","--server","-v"]
