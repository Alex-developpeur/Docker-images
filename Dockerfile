FROM ubuntu:latest

WORKDIR /root/.ssh

RUN apt-get update && apt-get install -y openssh-client
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
COPY ./id_ed25519 .
COPY ./config .
RUN chmod 600 ~/.ssh/*

ENTRYPOINT service ssh start && bash