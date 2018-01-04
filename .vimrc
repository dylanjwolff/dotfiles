execute pathogen#infect()

set encoding=utf-8
set list listchars=tab:»\ ,trail:·

syntax enable
set background=dark
colorscheme darkblack
set number

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

set backupdir=/tmp
set directory=/tmp

" Ale
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_eslint_use_global = 1
