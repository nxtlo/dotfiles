""""""""""""""""""""""""""""""""""
"   Usability
""""""""""""""""""""""""""""""""""

set smarttab
set tabstop=4
set shiftwidth=4
" use spaces instead of tabs
set expandtab


""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""

:nmap <space>e :CocCommand explorer<CR>
" Copy From Keyboard
vnoremap <leader>y "+y
" Paste From Keyboard
vnoremap <leader>p "+p
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


""""""""""""""""""""""""""""""""""
"   Interface
""""""""""""""""""""""""""""""""""


" Line number settings
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave    * set relativenumber
    autocmd BufEnter,FocusLost,InsertEnter      * set norelativenumber
augroup end


" Make comments italic
highlight comment cterm=italic gui=italic


""""""""""""""""""""""""""""""""""
"   Plugins
""""""""""""""""""""""""""""""""""

call plug#begin()
    "Elixir stuff
    Plug 'elixir-editors/vim-elixir'
    Plug 'elixir-lang/vim-elixir'
    Plug 'thinca/vim-ref'
    Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
    " ----------------------
    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
    Plug 'Chiel92/vim-autoformat'
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'w0rp/ale'
    Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tsony-tsonev/nerdtree-git-plugin'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
    Plug 'scrooloose/nerdcommenter'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'morhetz/gruvbox'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'dracula/vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
    Plug 'dense-analysis/ale'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'Shougo/deoplete.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'bling/vim-airline' " bottom status bar
    Plug 'Yggdroot/indentLine' " line indentation visualization
    Plug 'scrooloose/nerdtree' " side directory viewer
call plug#end()

set termguicolors
let ayucolor="mirage"
colorscheme dracula

" --------- bling/vim-airline settings -------------
" always show statusbar
set laststatus=2
" show paste if in paste mode
let g:airline_detect_paste=1
" use powerline font extras (arrows)
let g:airline_powerline_fonts=1
" show airline for tabs
let g:airline#extension#tabline#enabled=1

" --------- indentLine settings -------------------
let g:indentLine_showFirstLevelIndent=1
let g:indentLine_setColors=0



" -------------------------------------------------

noremap <F3> :Autoformat<CR>
augroup NCM2
  autocmd!
    autocmd BufEnter * call ncm2#enable_for_buffer()
      set completeopt=noinsert,menuone,noselect
	inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
augroup END

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>f  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-jedi',
  \ ]

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
set noswapfile
set wildignore+=*.pyc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300


let g:UtilSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" if Python3 was not detected put your path here, -> '/usr/bin/python3'
let g:python3_host_prog = ''
