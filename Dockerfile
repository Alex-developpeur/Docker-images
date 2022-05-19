FROM kroniak/ssh-client

WORKDIR /root/.ssh

#RUN apt-get update && apt-get install openssh-client -y
#RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
ARG SSH_PRIVATE_KEY
ARG CONFIG_SSH

RUN echo ${SSH_PRIVATE_KEY} > ~/.ssh/id_ed25519
RUN echo "Print CONFIG_SSH ${CONFIG_SSH}"
RUN mv $CONFIG_SSH ~/.ssh/config
#COPY ./id_ed25519 .
#COPY ./config .
RUN chmod 600 ~/.ssh/*

ENTRYPOINT bash