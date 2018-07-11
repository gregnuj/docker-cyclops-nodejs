FROM gregnuj/cyclops-base:stretch
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg > /etc/apt/trusted.gpg.d/yarn.gpg \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \ 
    && apt-key update \
    && apt-get update \
    && apt-get install -y \
    automake \
    autoconf \
    g++ \
    gcc \
    #libpng \
    make \
    nasm \
    nodejs \
    yarn \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

USER cyclops
WORKDIR /home/cyclops
CMD ["/usr/bin/nodejs","--version"]
