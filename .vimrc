call plug#begin('~/.vim/plugged')

  Plug 'rose-pine/vim'
  Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'

call plug#end()

" Appearance
colorscheme rosepine
set termguicolors
set bg=dark

" Editor core
set syntax=on
set number
set nowrap
set noshowmode
set noshowcmd
set noruler
set smoothscroll
set scrolloff=15
set sidescrolloff=15

" Indent and tabs
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

" Searching and regex
set history=1000
set ignorecase
set smartcase
set incsearch
set hlsearch

" File and backup
set hidden
set nobackup
set nowritebackup
set noswapfile

" Misc
set updatetime=0
set fillchars+=eob:\
set backspace=indent,eol,start
hi! link EndOfBuffer Ignore

let mapleader = ' '

nmap <silent> <leader>e :NERDTreeToggle<cr>

let g:lightline = {
      \ 'colorscheme': 'rosepine',
      \ 'active': {
      \   'left':   [ [ 'mode' ],
      \             [ 'filename', 'modified' ] ],
      \   'right': [ ['lineinfo'] ],
      \ },
      \ }
