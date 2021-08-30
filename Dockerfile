FROM python:3.8-alpine
FROM sitoi/dailycheckin:latest

ENTRYPOINT ["start.sh"]