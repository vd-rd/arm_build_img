FROM: alpine
MAINTAINER Vadim Radu <vadim@unda.tech>
LABEL Description="Image for building and debugging arm-embedded projects from git"
WORKDIR /work

RUN set -ex; \
    apk add --update git wget; \
    && rm -rf /var/cache/apk/*; \
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2; \
    tar xvf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2; \
    rm gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2

ENV PATH "/work/gcc-arm-none-eabi-8-2018-q4-major/bin:$PATH"
 


  
  
