FROM ubuntu:17.04
MAINTAINER tolzaxavier <tolza.xavier@gmail.com> 
RUN apt-get update && apt-get upgrade && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:team-xbmc/ppa
RUN apt-get update && apt-get install -y kodi kodi-pvr-iptvsimple
ENTRYPOINT [ "/usr/bin/kodi" ]
