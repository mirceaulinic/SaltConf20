# This Docker file is used to create a dummy container so salt-sproxy can SSH
# into this machine, and execute various commands. All it does it takes a base
# UNIX system (Debian in this case), and configures SSH and an username.

FROM python:3.7.9-slim-stretch

MAINTAINER ping@mirceaulinic.net

COPY sshd_config /etc/ssh/sshd_config

RUN apt-get update \
 && apt-get install -y sudo ssh \
 && useradd -m -N -s /bin/bash -u 1000 -p '$1$0Ln6JOkA$Hx1PqXoLRCLrpvZpgnQAM0' saltconf \
 && usermod -aG sudo saltconf \
 && mkdir /run/sshd

CMD /usr/sbin/sshd && tail -f /dev/null
