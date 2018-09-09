DOTFILEDIR ?= $(realpath ../$(dir $(lastword $(MAKEFILE_LIST))))
BUILD_PATH ?= $(DOTFILEDIR)/build
NCURAES_URL = http://ftp.gnu.org/pub/gnu/ncurses/ncurses-5.9.tar.gz
ZSH_URL = http://sourceforge.net/projects/zsh/files/zsh/5.0.2/zsh-5.0.2.tar.gz/download


zsh-setup:
	@printf '$(YELLOW_ON)\n==> Start to setup zsh...\n$(COLOR_OFF)'
	@test "$(DOTFILEDIR)/zsh/.zshrc" = `readlink $(HOME)/.zshrc` || ( \
		ln -sf $(DOTFILEDIR)/zsh/.zshrc $(HOME)/.zshrc)
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Setup zsh successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to setup zsh...\n$(COLOR_OFF)' && exit 1)


ncurses-install:
	@printf '$(YELLOW_ON)\n==> Start to install ncurses...\n$(COLOR_OFF)'
	@test -e $(BUILD_PATH)/include/ncurses || \
		mkdir -p $(BUILD_PATH)/src && cd $(BUILD_PATH)/src && \
		curl -L $(NCURAES_URL) -o ncurses.tar.gz && \
		tar zxvf ncurses.tar.gz && \
		cd ncurses-5.9 && \
		CPPFLAGS="-P" ./configure --prefix=$(BUILD_PATH) --with-shared && \
		make && make install
	@test -e $(BUILD_PATH)/include/ncurses && \
		printf '$(GREEN_ON)✔ Install ncurses successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install ncurses...\n$(COLOR_OFF)' && exit 1)


zsh-install: ncurses-install
	@printf '$(YELLOW_ON)\n==> Start to install zsh...\n$(COLOR_OFF)'
	@test -e $(HOME)/bin/zsh || \
		mkdir -p $(BUILD_PATH)/src && cd $(BUILD_PATH)/src && \
		curl -L $(ZSH_URL) -o zsh.tar.gz && \
		tar zxvf zsh.tar.gz && \
		cd zsh-5.0.2 && \
		./configure --prefix=$(BUILD_PATH) --enable-cflags="-I$(BUILD_PATH)/include" \
			--enable-cppflags="-I$(BUILD_PATH)/include" \
			--enable-ldflags="-L$(BUILD_PATH)/lib"\
			--enable-multibyte --enable-locale && \
		make && make install && \
		mv $(BUILD_PATH)/bin/zsh $(HOME)/bin
	@test -e $(HOME)/bin/zsh && \
		printf '$(GREEN_ON)✔ Install zsh successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install zsh...\n$(COLOR_OFF)' && exit 1)


zplug-install:
	@printf '$(YELLOW_ON)\n==> Start to install zplug...\n$(COLOR_OFF)'
	@test -e $(HOME)/.zplug || (\
		curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh)
	@test -e $(HOME)/.zplug && \
		printf '$(GREEN_ON)✔ Install zplug successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install zplug...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS += zsh-setup
INSTALL_TARGETS += zplug-install
