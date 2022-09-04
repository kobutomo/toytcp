FROM ubuntu:18.04

ARG GIT_USER
ARG GIT_EMAIL
RUN apt-get update
RUN apt-get install -y iputils-ping iproute2 iptables ethtool curl build-essential git
RUN git config --global user.name ${GIT_USER}
RUN git config --global user.email ${GIT_EMAIL}
RUN git config --global pull.ff only
RUN 
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
