FROM gregnuj/cyclops-base:alpine3.7
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && apk add --no-cache \
    nodejs 
  
USER cyclops
WORKDIR /home/cyclops
ENTRYPOINT ["/usr/bin/nodejs"]
CMD ["--version"]
