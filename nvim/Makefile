DOTFILEDIR ?= $(realpath ../$(dir $(lastword $(MAKEFILE_LIST))))
BIN_PATH ?= $(DOTFILEDIR)/bin
BUILD_PATH ?= $(DOTFILEDIR)/build
NVIM_VERSION = v0.3.1
NVIM_PATH = $(BIN_PATH)/nvim
NVIMRC_PATH = $(HOME)/.config/nvim
DEIN_VERSION = 2.0


neovim-setup:
	@printf '$(YELLOW_ON)\n==> Start to setup neovim...\n$(COLOR_OFF)'
	@test "$(DOTFILEDIR)/nvim" = "`readlink $(NVIMRC_PATH)`" || ( \
		mkdir -p $(HOME)/.config && \
		ln -sf $(DOTFILEDIR)/nvim $(NVIMRC_PATH))
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Setup neovim successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to setup neovim...\n$(COLOR_OFF)' && exit 1)


neovim-install:
	@printf '$(YELLOW_ON)\n==> Start to install neovim...\n$(COLOR_OFF)'
	@test -e $(NVIM_PATH) || test `uname` = 'Darwin' || (\
		mkdir -p $(BUILD_PATH)/src ~/.config && cd $(BUILD_PATH)/src && \
		curl -LO https://github.com/neovim/neovim/releases/download/$(NVIM_VERSION)/nvim.appimage && \
		chmod +x nvim.appimage && \
		./nvim.appimage --appimage-extract 2> /dev/null && \
		mv squashfs-root nvim && \
		cp $(BUILD_PATH)/src/nvim/AppRun $(NVIM_PATH) )
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Install neovim successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install neovim...\n$(COLOR_OFF)' && exit 1)

dein-install:
	@test -e ~/.cache/dein/repos/github.com/Shougo/dein.vim || (\
		mkdir -p $(BUILD_PATH)/tmp && cd $(BUILD_PATH)/tmp && \
		curl https://raw.githubusercontent.com/Shougo/dein.vim/$(DEIN_VERSION)/bin/installer.sh > installer.sh && \
		sh ./installer.sh ~/.cache/dein )
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Install dein successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install dein...\n$(COLOR_OFF)' && exit 1)


neovim-test:
	@printf '$(YELLOW_ON)\n==> Start to test neovim...\n$(COLOR_OFF)'
	@which nvim
	@test "$(DOTFILEDIR)/nvim" = `readlink $(NVIMRC_PATH)`
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Test neovim successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to test neovim...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS += neovim-setup
INSTALL_TARGETS += neovim-install
INSTALL_TARGETS += dein-install
TEST_TARGETS += neovim-test
