#
# Dockerup management container
#
# docker-build properties:
# TAG=barchart/dockerup:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

RUN pip install dockerup

ADD dockerup.conf /etc/dockerup/

VOLUME ["/var/run/docker.sock"]

ENTRYPOINT ["/usr/local/bin/dockerup"]
