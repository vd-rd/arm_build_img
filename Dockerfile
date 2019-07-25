FROM alpine
MAINTAINER Vadim Radu <vadim@printarescu.ro>
LABEL Description="Image for building and debugging arm-embedded projects from git"
WORKDIR /work
ADD . /work
RUN apk add --no-cache make
RUN wget -qO- https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 | tar -xj

ENV PATH "/work/gcc-arm-none-eabi-8-2018-q4-major/bin:$PATH"
 


  
  
