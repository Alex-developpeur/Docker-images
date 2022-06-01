FROM hashicorp/packer:latest

RUN mkdir /app && chmod 644 /app
WORKDIR /app 

RUN apk update
RUN apk add ansible

ENTRYPOINT bash