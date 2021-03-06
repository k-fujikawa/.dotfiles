FROM ubuntu:16.04

ENV LANG=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8

RUN apt-get update -y && apt-get install -y \
    build-essential \
    curl \
    git \
    vim \
    zsh \
    tmux \
    gawk \
    zip \
    language-pack-ja
RUN chsh -s /bin/zsh

ADD . /root/.dotfiles
WORKDIR /root/.dotfiles
