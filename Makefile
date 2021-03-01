DOTFILES_DIR ?= $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
.DEFAULT_GOAL := install
INSTALL_TARGETS += install-common
RED_ON = \033[31m
GREEN_ON = \033[32m
COLOR_OFF = \033[0m


ifeq ($(shell uname), Darwin)
	INSTALL_TARGETS += install-macos
endif


install: $(INSTALL_TARGETS)
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Install .dotfiles successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed .dotfiles...\n$(COLOR_OFF)' && exit 1)


install-common:
	# Create empty directory
	@mkdir -p -m 700 $(HOME)/.ssh
	@mkdir -p $(HOME)/.aws
	@mkdir -p $(HOME)/.config
	# Config files for git
	@ln -sf $(DOTFILES_DIR)/git/.gitconfig $(HOME)/.gitconfig 
	@ln -sf $(DOTFILES_DIR)/git/.gitignore $(HOME)/.gitignore
	@ln -sf $(DOTFILES_DIR)/git/.tigrc $(HOME)/.tigrc
	# Config files for vim
	@ln -sf $(DOTFILES_DIR)/vim/.vimrc $(HOME)/.vimrc
	# Config files for nvim
	@ln -sf $(DOTFILES_DIR)/nvim $(HOME)/.config/nvim
	# Config files for tmux
	@ln -sf $(DOTFILES_DIR)/tmux/.tmux.conf $(HOME)/.tmux.conf
	# Config files for zsh
	@ln -sf $(DOTFILES_DIR)/zsh/.zshrc $(HOME)/.zshrc


install-macos:
	# Config files for Atom
	@ln -sf $(DOTFILES_DIR)/atom/.atom $(HOME)/.atom
	# Config files for VSCode
	@ln -sf $(DOTFILES_DIR)/vscode/settings.json $(HOME)/Library/Application\ Support/Code/User/settings.json
