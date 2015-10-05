call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'mattn/emmet-vim'

call plug#end()

filetype plugin indent on
syntax on

colorscheme desert

set encoding=utf-8

set autoindent
set smartindent

set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

set nowrap
set synmaxcol=0

runtime macros/matchit.vim

map <C-n> :NERDTreeToggle<CR>
