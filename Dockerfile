FROM gregnuj/cyclops-base:stretch
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \ 
    && apt-get update \
    && apt-get install -y \
    automake \
    autoconf \
    g++ \
    gcc \
    make \
    nasm \
    nodejs \
    yarn \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

USER cyclops
WORKDIR /home/cyclops
CMD ["/usr/bin/nodejs","--version"]
