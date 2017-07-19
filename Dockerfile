#
# minerd Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Update & install packages for installing hashcat
RUN apt-get update && \
    apt-get install -y make libgmp-dev curl g++ git automake libcurl4-openssl-dev libjansson-dev libssl-dev zlibc autoconf build-essential zlib1g-dev

#Install and configure hashcat
RUN git clone https://github.com/tpruvot/cpuminer-multi && \
    cd cpuminer-multi && \
    bash build.sh && \
    make && \
    make install


#CMD ["/bin/bash""]
