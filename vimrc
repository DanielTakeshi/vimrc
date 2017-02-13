"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Let's just do a basic one here. No plugins, etc. Just one simple .vimrc file
" with the default vim I have.
"
" (c) February 2017 by Daniel Seita
" (Well, based on a lot of stuff online ...)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 10 lines to the cursor - when moving vertically using j/k.
set so=10

" Set the line numbers to be on the left hand side.
set nu

" Set the number of characters before breaking to a new line.
set tw=80

" Use (4) spaces instead of tabs (tabstop and shiftwidth apply to different
" cases I think).
set expandtab
set tabstop=4
set shiftwidth=4

" Set default syntax on (usually good enough for me).
syntax on

" Status line. Huh, I didn't know this existed.
set laststatus=2
set ruler

" Set spell checking for certain file extensions.
autocmd BufRead,BufNewFile *.md set spell spelllang=en_us
autocmd BufRead,BufNewFile *.tex set spell spelllang=en_us
autocmd BufRead,BufNewFile *.txt set spell spelllang=en_us

" Return to last edit position when opening files (cool!).
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
