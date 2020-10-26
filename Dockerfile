# This Docker file is used to create a dummy container so salt-sproxy can SSH
# into this machine, and execute various commands. All it does it takes a base
# UNIX system (Debian in this case), and configures SSH and an username.

FROM python:3.7.9-slim-stretch

MAINTAINER ping@mirceaulinic.net

COPY sshd_config /etc/ssh/sshd_config
COPY shadow /etc/shadow

RUN apt-get update \
 && apt-get install -y ssh \
 && mkdir /run/sshd

CMD /usr/sbin/sshd && tail -f /dev/null
