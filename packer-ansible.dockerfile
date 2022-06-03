FROM hashicorp/packer:latest

RUN mkdir /app && chmod 644 /app
WORKDIR /app 

RUN apk update
RUN apk add sudo
RUN apk add ansible
RUN apk add curl

ENTRYPOINT ["/bin/sh"]