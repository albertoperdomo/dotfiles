set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-rails.git'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-markdown'

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set wrap linebreak textwidth=0  " Soft wrap

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

filetype plugin indent on     " required!

" My own stuff
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set t_Co=256
colorscheme railscasts


"vim-powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
