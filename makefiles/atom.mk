atom-setup:
	@printf '$(YELLOW_ON)\n==> Start to setup atom...\n$(COLOR_OFF)'
	@test "$(DOTFILEDIR)/atom/.atom" = `readlink $(HOME)/.atom` || ( \
		ln -sf $(DOTFILEDIR)/atom/.atom $(HOME)/.atom)
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Setup atom successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to setup atom...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS += atom-setup
