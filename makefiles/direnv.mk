DIRENV_VERSION = 2.17.0
DIRENV_URL = https://github.com/direnv/direnv/releases/download/v$(DIRENV_VERSION)/direnv.linux-386
DIRENV_PATH = $(HOME)/bin/direnv


direnv-install:
	@printf '$(YELLOW_ON)\n==> Start to install direnv...\n$(COLOR_OFF)'
	@test -e $(DIRENV_PATH) || ( \
		mkdir -p $(HOME)/bin && \
		cd $(HOME)/bin ; \
		curl -L $(DIRENV_URL) -o direnv ; chmod +x direnv)
	@test -e $(DIRENV_PATH) && \
		printf '$(GREEN_ON)✔ Install direnv successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install direnv...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += direnv-install
