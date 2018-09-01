" Install dein
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

" Load plugins
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
let s:plugins = fnamemodify(expand('<sfile>'), ':h').'/plugins/nerdtree.vim'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif

" Install plugins
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

source $DOTFILEDIR/nvim/config.vim
source $DOTFILEDIR/nvim/plugins/airline.vim
source $DOTFILEDIR/nvim/plugins/indent.vim
source $DOTFILEDIR/nvim/plugins/neocomplcache.vim
source $DOTFILEDIR/nvim/plugins/nerdtree.vim
