FROM ubuntu:17.04
MAINTAINER kevinosorus <kevin.caradant@gmail.com
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:team-xbmc/ppa
RUN apt-get update
RUN apt-get install -y kodi


