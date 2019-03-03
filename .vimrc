set shell=/bin/bash

let mapleader = "\<Space>"
set nocompatible
filetype off

filetype plugin indent on
set autoindent
set encoding=utf-8
set scrolloff=2
set noshowmode
set hidden
" set nowrap
set nojoinspaces

" tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

" get syntax
syntax on

" wrapping options
set formatoptions=tc " wrap text and comments using textwidth
set formatoptions+=r " continue comments when pressing ENTER in I mode
set formatoptions+=q " enable formatting of comments with gq
set formatoptions+=n " detect lists for formatting
set formatoptions+=b " auto-wrap in insert mode, and do not wrap old long lines

" proper search
set incsearch
set ignorecase
set smartcase
set gdefault
set hlsearch

" search results centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" some magic
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" shortcuts
" ; as :
nnoremap ; :

" Show those damn hidden characters
" Verbose: set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•
set nolist
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

" Jump to start and end of line using the home row keys
map H ^
map L $


" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" Sane splits
	" 
set splitright
set splitbelow

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move by line
nnoremap j gj
nnoremap k gk

" insert newline without insert mode
nmap oo o<Esc>k

" gui options
set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set ruler
set laststatus=2
set relativenumber " Relative line numbers
set number " Also show current absolute line
" set colorcolumn=80 " and give me a colored column
set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
set shortmess+=c " don't give |ins-completion-menu| messages.

" Plugins 
call plug#begin('~/vimconfig/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:fzf_layout = { 'down': '~20%' }
nnoremap <silent> <leader>f :FZF<cr>

