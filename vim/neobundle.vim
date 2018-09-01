if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'https://github.com/Lokaltog/powerline'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'thinca/vim-localrc'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leshill/vim-json'
NeoBundle 'Align'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'tomasr/molokai'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'itchyny/landscape.vim'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'bling/vim-airline'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'cakebaker/scss-syntax.vim'

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
