FROM alpine:3.4

MAINTAINER yuucu

ENV AGLIO_VERSION 2.3.0

RUN apk --no-cache add \
  nodejs \
  python \
  make \
  g++ \
  git

RUN npm install -g aglio@${AGLIO_VERSION}

VOLUME /data

WORKDIR /data

EXPOSE 3000 35729

ENTRYPOINT ["aglio"]
