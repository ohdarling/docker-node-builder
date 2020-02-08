FROM node:alpine

RUN apk update && apk add --no-cache git openssh-keygen openssh-client && ssh-keyscan github.com > ~/.ssh/known_hosts
