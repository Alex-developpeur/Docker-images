FROM kroniak/ssh-client

WORKDIR /root/.ssh

RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh

ARG SSH_PRIVATE_KEY
RUN echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519

ARG CONFIG_SSH
RUN echo "$CONFIG_SSH" > ~/.ssh/config

RUN chmod 600 ~/.ssh/*

ENTRYPOINT bash