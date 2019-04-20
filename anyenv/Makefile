anyenv-install:
	@printf '$(YELLOW_ON)\n==> Start to install anyenv...\n$(COLOR_OFF)'
	@test -e $(HOME)/.anyenv || (\
		git clone https://github.com/riywo/anyenv ~/.anyenv && \
		~/.anyenv/bin/anyenv install --force-init)
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Install anyenv successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install anyenv...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += anyenv-install
