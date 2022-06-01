FROM debian:10

RUN apt update
RUN apt install curl -y
RUN apt install -y gnupg2
RUN apt install -y lsb-release
RUN apt install software-properties-common

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install packer

ENTRYPOINT bash