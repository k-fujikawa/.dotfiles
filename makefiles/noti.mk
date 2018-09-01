NOTI_VERSION = 2.3.0
NOTI_PATH = $(HOME)/bin/noti

ifeq ($(shell uname), Darwin)
    NOTI_FILENAME = noti_darwin_amd64
	NOTI_URL = https://github.com/variadico/noti/releases/download/v$(NOTI_VERSION)/noti$(NOTI_VERSION).darwin-amd64.tar.gz
else
	NOTI_FILENAME = noti_linux_amd64
	NOTI_URL = https://github.com/variadico/noti/releases/download/v$(NOTI_VERSION)/noti$(NOTI_VERSION).linux-amd64.tar.gz
endif


noti-install:
	@printf '$(YELLOW_ON)\n==> Start to install noti...\n$(COLOR_OFF)'
	@test -e $(NOTI_PATH) || (cd $(HOME)/bin && \
		curl -L $(NOTI_URL) -o noti.tar.gz && \
		tar zxvf noti.tar.gz && \
		rm noti.tar.gz)
	@test -e $(NOTI_PATH) && \
		printf '$(GREEN_ON)✔ Install noti successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install noti...\n$(COLOR_OFF)' && exit 1)


INSTALL_TARGETS += noti-install
