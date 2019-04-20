BREW_PATH := /usr/local/bin/brew


brew-install:
	@printf '$(YELLOW_ON)\n==> Start to install homebrew...\n$(COLOR_OFF)'
	@test -e $(BREW_PATH) || ( \
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
	@brew update
	@brew bundle -v
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Install homebrew successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install homebrew...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += brew-install
