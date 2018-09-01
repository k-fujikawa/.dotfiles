let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey ctermbg=black
let g:indent_guides_enable_on_vim_startup = 1
autocmd InsertEnter * if !exists('w:last_fdm')
    \| let w:last_fdm=&foldmethod
    \| setlocal foldmethod=manual
    \| endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm')
    \| let &l:foldmethod=w:last_fdm
    \| unlet w:last_fdm
    \| endif
