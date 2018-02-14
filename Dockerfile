FROM ubuntu:trusty
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget gcc python git build-essential

RUN git clone https://github.com/galaxy001/pirs.git

RUN apt-get install -y zlib1g-dev libboost-all-dev

RUN cd pirs; make

RUN cp -r /pirs/src/pirs/Profiles /usr/local/share/pirs

ENV PATH="/pirs/:${PATH}"
