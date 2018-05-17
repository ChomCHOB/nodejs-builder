# build and test stage
FROM node:8.11.2-alpine

LABEL maintainer "support@chomchob.com"

RUN set -ex; \
  \
  # install build dependencies
  apk add --no-cache make gcc g++ python git; \
  \
  # standard for style checking
  npm i -g standard; 
