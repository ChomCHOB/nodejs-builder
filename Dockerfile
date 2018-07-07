# build and test stage
FROM node:8.11.3-alpine

LABEL maintainer "support@chomchob.com"

RUN set -ex; \
  \
  # install build dependencies
  apk add --no-cache make gcc g++ python git openssh-client; \
  \
  # style checking and unit test
  npm i -g \
    standard \
    mocha \
    chai \
    nyc \
    sinon \
    \
    ts-node \
    source-map-support \
    tslint \
    typescript \
    ;
