set clipboard=unnamed
syntax enable
set number
set numberwidth=1
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set showcmd
set encoding=utf-8
set showmatch
set relativenumber
set laststatus=2

call plug#begin(stdpath('config') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'townk/vim-autoclose'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w!<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>zz :wq<CR>
nmap <Leader>p :Files<CR>
