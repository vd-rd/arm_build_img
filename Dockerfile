FROM: alpine

RUN set -ex
RUN apk add --update git wget; \
    && rm -rf /var/cache/apk/*
    
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2; \
  tar xvf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2;


  
  
