
FROM ruby:2.2.4
MAINTAINER PastLeo <chgu82837@gmail.com>

RUN \
apt-get update && \
apt-get install -y locales && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN \
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
/usr/sbin/locale-gen && \
locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN gem install slideshow -v 2.3.0

RUN mkdir -p /root/.slideshow/templates
ADD . /root/.slideshow/templates/pastpress

RUN mkdir /workspace
WORKDIR /workspace

ENTRYPOINT ["slideshow"]

