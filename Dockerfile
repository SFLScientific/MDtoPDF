FROM pandoc/latex:2.9
RUN apk --no-cache add librsvg && \
ln -s /usr/bin/rsvg-convert /usr/local/bin/rsvg

RUN apk add --no-cache bash

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]