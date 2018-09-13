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
