GOOFYS_VERSION = v0.0.10
GOOFYS_PATH = $(HOME)/bin/goofys
GOOFYS_URL = https://github.com/kahing/goofys/releases/download/$(GOOFYS_VERSION)/goofys

goofys-install:
	@printf '$(YELLOW_ON)\n==> Start to install goofys...\n$(COLOR_OFF)'
	@test -e $(GOOFYS_PATH) || (cd $(HOME)/bin && \
		curl -L $(GOOFYS_URL) -o goofys && \
		chmod +x goofys)
	@test -e $(GOOFYS_PATH) && \
		printf '$(GREEN_ON)✔ Install goofys successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install goofys...\n$(COLOR_OFF)' && exit 1)

ifneq ($(shell uname), Darwin)
INSTALL_TARGETS += goofys-install
endif
