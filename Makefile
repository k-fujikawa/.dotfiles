DOTFILEDIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
RED_ON = \033[31m
GREEN_ON = \033[32m
YELLOW_ON = \033[33m
COLOR_OFF = \033[0m
SETUP_TARGETS +=
INSTALL_TARGETS +=
.DEFAULT_GOAL := install
BUILD_PATH = $(HOME)/build

# OS specific installations
ifeq ($(shell uname), Darwin)
	include makefiles/atom.mk
	include makefiles/brew.mk
else
	include makefiles/direnv.mk
endif

# Common installations
include makefiles/aws.mk
include makefiles/git.mk
include makefiles/peco.mk
include makefiles/pt.mk
include makefiles/ssh.mk
include makefiles/tmux.mk
include makefiles/vim.mk
include makefiles/neovim.mk
include makefiles/zsh.mk


setup: $(SETUP_TARGETS)

install: setup $(INSTALL_TARGETS)

test: $(TEST_TARGETS)
