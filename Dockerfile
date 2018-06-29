FROM gregnuj/cyclops-base:alpine3.7
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && apk add --no-cache \
    automake \
    autoconf \
    g++ \
    gcc \
    libpng \
    make \
    nasm \
    nodejs
  
USER cyclops
WORKDIR /home/cyclops
CMD ["/usr/bin/nodejs","--version"]
