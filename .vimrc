if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif
filetype off
set nocompatible
syntax on
set number
set autoindent
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set t_Co=256
colo dracula
set background=dark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

let g:python_highlight_all = 1

" Underline
set cursorline
hi clear CursorLine
hi CursorLine cterm=underline

" Status
set laststatus=2
autocmd BufWritePre * :%s/\s\+$//e
" Disable docstring jedi
autocmd FileType python setlocal completeopt-=preview
" Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
