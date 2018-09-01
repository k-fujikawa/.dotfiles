git-setup:
	@printf '$(YELLOW_ON)\n==> Start to setup git...\n$(COLOR_OFF)'
	@test "$(DOTFILEDIR)/git/.gitconfig" = `readlink $(HOME)/.gitconfig` || ( \
		ln -sf $(DOTFILEDIR)/git/.gitconfig $(HOME)/.gitconfig)
	@test "$(DOTFILEDIR)/git/.gitignore" = `readlink $(HOME)/.gitignore` || ( \
		ln -sf $(DOTFILEDIR)/git/.gitignore $(HOME)/.gitignore)
	@test "$(DOTFILEDIR)/git/.tigrc" = `readlink $(HOME)/.tigrc` || ( \
		ln -sf $(DOTFILEDIR)/git/.tigrc $(HOME)/.tigrc)
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Setup git successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to setup git...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS = git-setup
