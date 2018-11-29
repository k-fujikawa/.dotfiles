tmux-setup:
	@printf '$(YELLOW_ON)\n==> Start to setup tmux...\n$(COLOR_OFF)'
	@test "$(DOTFILEDIR)/tmux/.tmux.conf" = `readlink $(HOME)/.tmux.conf` || ( \
		ln -sf $(DOTFILEDIR)/tmux/.tmux.conf $(HOME)/.tmux.conf)
	@test -e ~/.tmux/plugins/tpm || ( \
		mkdir -p ~/.tmux/plugins && \
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && \
		~/.tmux/plugins/tpm/bin/install_plugins )
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Setup tmux successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to setup tmux...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS += tmux-setup
