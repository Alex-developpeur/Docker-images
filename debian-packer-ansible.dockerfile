FROM ubuntu

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install -y gnupg2
RUN apt-get install -y lsb-release
RUN apt-get install software-properties-common

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install packer

RUN apt-get install software-properties-common
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt-get install ansible

ENTRYPOINT bash