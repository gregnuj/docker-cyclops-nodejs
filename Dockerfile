FROM gregnuj/cyclops-base:alpine3.7
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
RUN set -ex \
    && apk add --no-cache \
    nodejs 
  
USER www-data
WORKDIR /var/www
ENTRYPOINT ["/usr/bin/php"]
CMD ["-a"]
