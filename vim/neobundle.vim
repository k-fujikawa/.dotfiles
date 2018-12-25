if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'tomasr/molokai'
NeoBundle 'Align'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'leshill/vim-json'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'w0rp/ale'

if(!empty(neobundle#get_not_installed_bundle_names()))
  echomsg 'Not installed bundles: '
    \ string(neobundle#get_not_installed_bundle_names())
  if confirm('Install bundles now?', "yes\nNo", 2) == 1
    NeoBundleInstall
    source ~/.vimrc
  endif
end

call neobundle#end()

source $DOTFILEDIR/vim/plugins/nerdtree.vim
source $DOTFILEDIR/vim/plugins/neocomplcache.vim
source $DOTFILEDIR/vim/plugins/airline.vim
source $DOTFILEDIR/vim/plugins/indent.vim
source $DOTFILEDIR/vim/plugins/ale.vim
