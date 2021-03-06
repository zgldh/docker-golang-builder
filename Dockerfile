FROM golang:1.15.2-alpine3.12

LABEL version="1.15.2-alpine3.12-git" \
  description="Pre-installed with git, gcc and musl-dev"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update \
    && apk upgrade \
    && apk add --no-cache git \
    && apk add --no-cache gcc \
    && apk add --no-cache musl-dev
