# .dotfiles

[![CircleCI](https://circleci.com/gh/k-fujikawa/.dotfiles.svg?style=svg)](https://circleci.com/gh/k-fujikawa/.dotfiles)

## Setup

```bash
git clone git@github.com:k-fujikawa/.dotfiles.git
cd .dotfiles
make
```

## Test to install .dotfiles with Docker

```bash
docker-compose build
docker-compose run test /bin/zsh
make
make test
```
