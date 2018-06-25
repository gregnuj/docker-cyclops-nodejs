FROM gregnuj/cyclops-base:edge
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && apk add --no-cache \
    nodejs 
  
WORKDIR /home/cyclops
ENTRYPOINT ["/usr/bin/nodejs"]
CMD ["--version"]
