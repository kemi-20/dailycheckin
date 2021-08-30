FROM python:3.8-alpine
MAINTAINER Sitoi <Sitoi0418@gmail.com>

WORKDIR /dailycheckin
RUN set -ex \
    && pip install dailycheckin --user

ADD . /dailycheckin

