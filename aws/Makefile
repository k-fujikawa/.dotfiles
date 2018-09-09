AWS_CREDENTIALS_PATH = $(HOME)/.aws/credentials


aws-credentials-install:
	@printf '$(YELLOW_ON)\n==> Start to install aws...\n$(COLOR_OFF)'
	@mkdir -p '$(HOME)/.aws'
	@test -e $(AWS_CREDENTIALS_PATH) || touch $(AWS_CREDENTIALS_PATH)
	@test -e $(AWS_CREDENTIALS_PATH) && \
		printf '$(GREEN_ON)✔ Install aws credentials successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install aws credentials...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += aws-credentials-install
