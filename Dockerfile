#
# Dockerfile for altserver
#

FROM python:slim

COPY docker-entrypoint.sh /entrypoint.sh

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NOWARNINGS=yes

RUN set -ex \
    && apt-get update && apt-get install -y \
       usbmuxd libimobiledevice6 libimobiledevice-utils \
       psmisc sudo tini wget curl libavahi-compat-libdnssd-dev \
    && pip install --upgrade pip \
    && pip install requests \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/* /root/.cache/*

WORKDIR /altserver

ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]
CMD ["python3","main.py"]
