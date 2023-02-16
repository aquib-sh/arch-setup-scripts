filetype plugin indent on
syntax on

" enable copy pasting from mouse using shift
set mouse=a

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" show line numbers
set number
set relativenumber

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

set ai "Auto indent
set si "Smart indent

" Highlight the current line
set cursorline

" Enable incremental search, where Vim highlights matches as you type
set incsearch

" Enable case-insensitive search
set ignorecase
set smartcase

"Enable undo tree for better undo/redo navigation
set undofile
set undodir=~/.vim/undodir

" Automatically close brackets, quotes, etc.
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" Map the leader key to space
let mapleader = "\<Space>"

" Define some custom mappings using the leader key
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>e :Ex<CR>

