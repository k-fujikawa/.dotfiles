DOTFILEDIR ?= $(realpath ../$(dir $(lastword $(MAKEFILE_LIST))))


hyper-setup:
	@printf '$(YELLOW_ON)\n==> Start to setup hyper...\n$(COLOR_OFF)'
	@test "$(DOTFILEDIR)/hyper/.hyper.js" = `readlink $(HOME)/.hyper.js` || ( \
		ln -sf $(DOTFILEDIR)/hyper/.hyper.js $(HOME)/.hyper.js)
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Setup hyper successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to setup hyper...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS += hyper-setup
