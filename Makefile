DOTFILEDIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
RED_ON = \033[31m
GREEN_ON = \033[32m
YELLOW_ON = \033[33m
COLOR_OFF = \033[0m
.DEFAULT_GOAL := install
BIN_PATH = $(DOTFILEDIR)/bin
BUILD_PATH = $(DOTFILEDIR)/build


# OS specific installations
ifeq ($(shell uname), Darwin)
	include atom/Makefile
	include hyper/Makefile
else
	include direnv/Makefile
endif


# Common installations
include anyenv/Makefile
include aws/Makefile
include git/Makefile
include pt/Makefile
include ssh/Makefile
include tmux/Makefile
include vim/Makefile
include nvim/Makefile
include zsh/Makefile


setup: $(SETUP_TARGETS)

install: setup $(INSTALL_TARGETS)

test: $(TEST_TARGETS)
