PECO_VERSION = 0.5.1
PECO_PATH = $(HOME)/bin/peco

ifeq ($(shell uname), Darwin)
	PECO_FILENAME = peco_darwin_amd64
	PECO_URL = https://github.com/peco/peco/releases/download/v$(PECO_VERSION)/peco_darwin_amd64.zip
else
	PECO_FILENAME = peco_linux_amd64
	PECO_URL = https://github.com/peco/peco/releases/download/v$(PECO_VERSION)/peco_linux_amd64.tar.gz
endif


peco-install:
	@printf '$(YELLOW_ON)\n==> Start to install peco...\n$(COLOR_OFF)'
	@test -e $(PECO_PATH) || ( \
		mkdir -p $(HOME)/bin && \
		cd $(HOME)/bin && \
		curl -L $(PECO_URL) -o peco.tar.gz && \
		tar zxvf peco.tar.gz && \
		mv $(PECO_FILENAME)/peco peco && \
		chmod +x peco && \
		rm -r $(PECO_FILENAME) peco.tar.gz)
	@test -e $(PECO_PATH) && \
		printf '$(GREEN_ON)✔ Install peco successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install peco...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += peco-install
