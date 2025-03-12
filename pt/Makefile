DOTFILEDIR ?= $(realpath ../$(dir $(lastword $(MAKEFILE_LIST))))
BIN_PATH ?= $(DOTFILEDIR)/bin
PT_VERSION = 2.1.5
PT_PATH = $(BIN_PATH)/pt

ifeq ($(shell uname), Darwin)
    PT_FILENAME = pt_darwin_amd64
	PT_URL = https://github.com/monochromegane/the_platinum_searcher/releases/download/v$(PT_VERSION)/pt_darwin_amd64.zip
else
	PT_FILENAME = pt_linux_amd64
	PT_URL = https://github.com/monochromegane/the_platinum_searcher/releases/download/v$(PT_VERSION)/pt_linux_amd64.tar.gz
endif


pt-install:
	@printf '$(YELLOW_ON)\n==> Start to install pt...\n$(COLOR_OFF)'
	@mkdir -p $(BIN_PATH)
	@test -e $(PT_PATH) || (cd $(BIN_PATH) && \
		curl -L $(PT_URL) -o pt.tar.gz && \
		tar zxvf pt.tar.gz && \
		mv $(PT_FILENAME)/pt pt && \
		chmod +x pt && \
		rm -r $(PT_FILENAME) pt.tar.gz)
	@test -e $(PT_PATH) && \
		printf '$(GREEN_ON)✔ Install pt successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install pt...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += pt-install
