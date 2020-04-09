" Begin Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" End Vundle

set encoding=utf-8
set list listchars=tab:»\ ,trail:·

syntax enable
set number
set shell=/bin/bash
set backupcopy=yes
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu
set lazyredraw
set showmatch           "show matching brakcets
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR> "turn off search highlight
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

set undodir=/tmp
set backupdir=/tmp
set directory=/tmp

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Plugins
Plugin 'ajh17/vimcompletesme'
let b:vcm_tab_complete = "omni"
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'w0rp/ale'
Plugin 'unblevable/quick-scope'
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
Plugin 'ruanyl/vim-fixmyjs'
au BufWritePre *.js :Fixmyjs
au BufWritePre *.jsx :Fixmyjs





" More Vundle Stuff: All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
