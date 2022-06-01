FROM hashicorp/packer:latest

RUN sudo apk update
RUN sudo apk add ansible

ENTRYPOINT bash