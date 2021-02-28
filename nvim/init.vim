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

" ====  Visual settings  ====
set t_Co=256
colorscheme molokai
set number
set ttimeoutlen=50

" ====  Encoding  ====
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,enc-jp,sjis,jis
set fileformats=unix

" ====  No backup files  ====
set noswapfile
set nobackup

" ====  Indentations  ====
set autoindent smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set textwidth=78
set shiftround
inoremap <C-a> <Esc>vggG=i
nnoremap <C-a> <Esc>vggG=

" ====  Filetype  ====
filetype on
filetype indent on
filetype plugin on
syntax on

" ====  Cursor  ====
set mouse=a
set cursorline
set showmatch
set backspace=indent,eol,start
set whichwrap=b,s,h,l
set textwidth=0
nmap <CR> o<ESC>
nnoremap j gj
nnoremap k gk

" ====  Syntax type  ====
au BufReadPost *.tt set syntax=html
au BufReadPost *.hql set syntax=sql
au BufReadPost *.hql set filetype=sql
au BufReadPost *.liquid set syntax=yaml
au BufReadPost *.liquid set filetype=yaml
au BufReadPost *.java set noexpandtab

" ====  Tabstop  ====
autocmd! FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType coffee setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
