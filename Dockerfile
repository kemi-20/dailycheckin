FROM python:3.8-alpine

WORKDIR /dailycheckin

RUN set -ex \
    && mkdir -p config
    && curl https://gitee.com/sitoi/dailycheckin/raw/main/docker/config.template.json -o config/config.json
    && curl -O https://gitee.com/sitoi/dailycheckin/raw/main/docker/docker-compose.yml
    && curl -O https://gitee.com/sitoi/dailycheckin/raw/main/docker/Makefile
    && docker-compose up -d