FROM gregnuj/cyclops-base:latest
LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"
USER root

# Install packages 
# Install packages
RUN set -ex \
	&& apt-get update \
	&& apt-get install -y \
    nodejs \
	--no-install-recommends \
	&& rm -r /var/lib/apt/lists/*
    
WORKDIR /home/cyclops
ENTRYPOINT ["/usr/bin/nodejs"]
CMD ["--version"]
