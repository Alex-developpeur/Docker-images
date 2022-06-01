FROM hashicorp/packer:latest

RUN apk update
RUN apk add ansible

ENTRYPOINT bash