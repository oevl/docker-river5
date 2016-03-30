FROM mhart/alpine-node:4
MAINTAINER Ray Grasso <ray.grasso@gmail.com>
ENV REFRESHED_AT 2016-03-15

# RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
# RUN apt-get update && apt-get install -y nodejs zip

RUN apk update && apk upgrade && \
    apk add curl

RUN mkdir -p /opt/nodeapp

WORKDIR /opt/nodeapp
RUN curl -SLO https://github.com/scripting/river5/archive/master.zip \
    && unzip master.zip && rm master.zip && rm -f lists/*

WORKDIR /opt/nodeapp/river5-master
RUN npm install

VOLUME [ "/opt/data", "/opt/config" ]

COPY config.json .

EXPOSE 1337

ENTRYPOINT [ "node", "river5.js" ]

