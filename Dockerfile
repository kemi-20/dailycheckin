FROM python:3.8-alpine

WORKDIR /dailycheckin

RUN mkdir -p config

RUN curl https://github.com/sitoi/dailycheckin/raw/main/docker/config.template.json -o config/config.json

RUN docker run -d -v $(pwd)/config:/dailycheckin/config \
    && -v $(pwd)/logs:/dailycheckin/logs \
    && --name dailycheckin \
    && --restart always \
    && sitoi/dailycheckin:latest

ADD . /dailycheckin


ENTRYPOINT ["start.sh"]