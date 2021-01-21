
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


