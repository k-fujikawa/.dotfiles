NEOBUNDLE_PATH = $(HOME)/.vim/bundle/neobundle.vim
VIMPROC_PATH = $(HOME)/.vim/bundle/vimproc.vim


vim-setup:
	@test "$(DOTFILEDIR)/vim/.vimrc" = `readlink $(HOME)/.vimrc` || ( \
		ln -sf $(DOTFILEDIR)/vim/.vimrc $(HOME)/.vimrc)


neobundle-install:
	@printf '$(YELLOW_ON)\n==> Start to install neobundle...\n$(COLOR_OFF)'
	@mkdir -p '$(HOME)/.vim/bundle'
	@test -e $(NEOBUNDLE_PATH) || \
		git clone https://github.com/Shougo/neobundle.vim $(NEOBUNDLE_PATH)
	@test -e $(VIMPROC_PATH) || \
		git clone https://github.com/Shougo/vimproc.vim $(VIMPROC_PATH) && \
		cd $(VIMPROC_PATH) && make
	@DOTFILEDIR=$(DOTFILEDIR) $(HOME)/.vim/bundle/neobundle.vim/bin/neoinstall
	@test $$? = 0 && \
		printf '$(GREEN_ON)✔ Install neobundle successfully!\n$(COLOR_OFF)' || \
		(printf '$(RED_ON)✘ Failed to install neobundle...\n$(COLOR_OFF)' && exit 1)


SETUP_TARGETS += vim-setup
INSTALL_TARGETS += neobundle-install
