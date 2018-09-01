FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y \
    build-essential \
    curl \
    git \
    vim \
    zsh \
    tmux

RUN chsh -s /bin/zsh
ADD . /dotfiles
WORKDIR /dotfiles
