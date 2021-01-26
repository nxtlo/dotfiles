set nocompatible
filetype off
set t_Co=256

call plug#begin('~/.vim/plugge')
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim'
Plug 'valloric/youcompleteme'
Plug 'hugolgst/vimsence'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:airline#extensions#tabline#formatter = 'default'
colorscheme dracula
set statusline=%{LinterStatus()}
set backspace=indent,eol,start
set tabpagemax=4
set shiftwidth=4
set tabstop=4
set expandtab
filetype plugin on
filetype indent on
syntax on
set nu
set autochdir
nmap <leader>l :set list!<CR>
set mouse=a
set autoread
let NERDTreeQuitOnOpen = 1
set completeopt=menu
set linebreak
autocmd Filetype html,ruby,javascript,yml,yaml,json,haskell,ejs,htmldjango setlocal ts=2 sts=2 sw=2
set noswapfile
set wildignore+=*.pyc

let g:python2_host_prog = ''
let g:python3_host_prog = ''
let g:acp_enableAtStartup = 0
