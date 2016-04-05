FROM mhart/alpine-node:4
MAINTAINER Ray Grasso <ray.grasso@gmail.com>
ENV REFRESHED_AT 2016-03-30

RUN apk update && apk upgrade && \
    apk add curl

RUN mkdir -p /app

WORKDIR /app
RUN curl -SLO https://github.com/scripting/river5/archive/master.zip && \
    unzip master.zip && \
    rm master.zip

WORKDIR /app/river5-master
RUN npm install

VOLUME [ "/app/river5-master/data", "/app/river5-master/rivers", "/config" ]

ADD start.sh .

EXPOSE 1337

ENTRYPOINT [ "./start.sh" ]

