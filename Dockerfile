ARG SSH_PRIVATE_KEY
FROM kroniak/ssh-client

WORKDIR /root/.ssh

#RUN apt-get update && apt-get install openssh-client -y
#RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo "Print SSH_PRIVATE_KEY ${SSH_PRIVATE_KEY}"

RUN echo ${SSH_PRIVATE_KEY} > ~/.ssh/id_ed25519
COPY ./id_ed25519 .
COPY ./config .
RUN chmod 600 ~/.ssh/*

ENTRYPOINT bash