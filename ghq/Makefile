BIN_PATH ?= ~/.bin
GHQ_PATH = $(BIN_PATH)/ghq
GHQ_VERSION = v1.3.0
OS_TYPE = $(shell uname | tr '[A-Z]' '[a-z]')

ifeq ($(shell uname -m), arm64)
	MACHINE_TYPE = arm64
else
	MACHINE_TYPE = amd64
endif

GHQ_DIR_NAME = ghq_$(OS_TYPE)_$(MACHINE_TYPE)
GHQ_URL = https://github.com/x-motemen/ghq/releases/download/$(GHQ_VERSION)/$(GHQ_DIR_NAME).zip


ghq-install:
	@printf '$(YELLOW_ON)\n==> Start to install ghq...\n$(COLOR_OFF)'
	@echo ${GHQ_URL}
	@test -e $(GHQ_PATH) || (mkdir -p $(BIN_PATH) && \
		cd $(BIN_PATH) && \
		curl -L $(GHQ_URL) -o $(GHQ_DIR_NAME).zip && \
		unzip $(GHQ_DIR_NAME).zip  && \
		mv $(GHQ_DIR_NAME)/ghq ghq && \
		chmod +x ghq && \
		rm -r $(GHQ_DIR_NAME) $(GHQ_DIR_NAME).zip)
	@test -e $(GHQ_PATH) && \
		printf '$(GREEN_ON)✔ Install ghq successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install ghq...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += ghq-install
