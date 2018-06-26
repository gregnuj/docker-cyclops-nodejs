FROM gregnuj/cyclops-base:latest
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && apk add --no-cache \
    nodejs 
  
USER cyclops
WORKDIR /home/cyclops
CMD ["/usr/bin/nodejs","--version"]
