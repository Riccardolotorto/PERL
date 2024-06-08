FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update && sudo apt-get install -y \
    perl \
    libdbi-perl \
    libdbd-mysql-perl \
    mysql-client


