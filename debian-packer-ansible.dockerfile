FROM debian:10

RUN apt update
RUN apt install -y curl
RUN apt install -y gnupg2
RUN apt install -y lsb-release
RUN apt install -y software-properties-common
RUN apt install openssh-server

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install packer

RUN apt-get install -y \
    python \
    python-pip

RUN python -m pip install ansible

ENTRYPOINT bash