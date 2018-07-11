FROM gregnuj/cyclops-base:edge
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
    nodejs \
    yarn
  
USER cyclops
WORKDIR /home/cyclops
CMD ["/usr/bin/nodejs","--version"]
