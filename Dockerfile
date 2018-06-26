FROM gregnuj/cyclops-base:stretch
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && apt-get update \
    && apt-get install -y \
    nodejs \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

USER cyclops
WORKDIR /home/cyclops
CMD ["/usr/bin/nodejs","--version"]
