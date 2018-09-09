SSH_CONFIG_PATH = $(HOME)/.ssh/credentials


ssh-config-install:
	@printf '$(YELLOW_ON)\n==> Start to install ssh...\n$(COLOR_OFF)'
	@test -e $(HOME)/.ssh || (mkdir -p '$(HOME)/.ssh' && chmod 700 $(HOME)/.ssh)
	@test -e $(SSH_CONFIG_PATH) || touch $(SSH_CONFIG_PATH)
	@test -e $(SSH_CONFIG_PATH) && \
		printf '$(GREEN_ON)✔ Install ssh config successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install ssh config...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += ssh-config-install
