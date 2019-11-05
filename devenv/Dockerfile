FROM ubuntu:16.04
WORKDIR /projects

# Install ubuntu dependencies
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN apt-get install -y git

# Configure basic git settings
RUN git config --global push.default simple
RUN git config --global credential.helper store

#Execute command
CMD ["/bin/bash"]