FROM ubuntu:14.04

MAINTAINER woflow

RUN sudo apt-get update
RUN sudo apt-get install -y build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev git unzip pdftk

RUN mkdir /temp && cd /temp \
    && git clone git://github.com/ariya/phantomjs.git phantomjs \
    && cd phantomjs \
    && git checkout 2.0 \
    && ./build.sh --confirm && mv bin/phantomjs /usr/local/bin \
    && cd / && rm -rf /temp