FROM node:alpine

RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN apk update && apk add --no-cache git openssh-keygen openssh-client && ssh-keyscan github.com > ~/.ssh/known_hosts
