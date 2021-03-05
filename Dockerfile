FROM ubuntu:16.04
RUN apt-get update
RUN mkdir /opt/app
COPY hola.sh /opt/app
WORKDIR /opt/app
RUN touch miprueba.txt
