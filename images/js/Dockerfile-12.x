FROM markadams/chromium-xvfb

WORKDIR /usr/src/app
ENV NODE_VERSION=12

RUN apt-get install -y gpg \
    && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
    && apt-get install -y nodejs=${NODE_VERSION}nodesource1 gpg \
    && rm -rf /var/lib/apt/lists

CMD npm test
