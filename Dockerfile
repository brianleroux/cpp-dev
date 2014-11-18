# C++ Dev Dockerfile
#
# build with: sudo docker build --rm --no-cache -t cppdev - < Dockerfile
# run with: sudo docker run -i -t cppdev /bin/bash
# use the ubuntu base image
# FROM ubuntu:13.10
FROM ubuntu
MAINTAINER Brian LeRoux b@brian.io

# update package repository
RUN apt-get update

# install g++, git, zlib, cmake, boost, ...
RUN apt-get install -y build-essential g++ git cmake zlib1g-dev libboost-date-time-dev libboost-program-options-dev libboost-system-dev libboost-filesystem-dev libboost-iostreams-dev wget unzip

# install googlemock and gtest
RUN wget https://googlemock.googlecode.com/files/gmock-1.7.0.zip
RUN unzip -a gmock-1.7.0.zip
RUN cd gmock-1.7.0/ ; mkdir mybuild ; cd mybuild ; cmake .. ; make
RUN cd gmock-1.7.0/gtest ; mkdir mybuild ; cd mybuild ; cmake .. ; make

# install cpptest
RUN apt-get install -y cpputest

# install curl
RUN apt-get install -y libcurl4-gnutls-dev

# install scons
RUN sudo apt-get install -y scons

# install jsoncpp
RUN apt-get install -y libjsoncpp-dev

# install rlog
RUN apt-get install -y librlog-dev

# fetch the source
RUN wget http://media.pragprog.com/titles/lotdd/code/lotdd-code.tgz
RUN tar xzf lotdd-code.tgz


