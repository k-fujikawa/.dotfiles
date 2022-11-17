fzf-install:
	@printf '$(YELLOW_ON)\n==> Start to install zplug...\n$(COLOR_OFF)'
	@test -e $(HOME)/.fzf || (\
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
		~/.fzf/install --completion --key-bindings --no-update-rc )
	@test -e $(HOME)/.fzf && \
		printf '$(GREEN_ON)✔ Install fzf successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install fzf...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += fzf-install
