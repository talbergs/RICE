let mapleader="\<Space>"
set mouse=a
set signcolumn=yes
set completeopt=noinsert,menuone,noselect
set hidden
set splitbelow
set pumheight=35
set nowrap
set virtualedit=block
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set list
set listchars=space:⋅,trail:•,tab:᚛⋅,nbsp:⦸,extends:»,precedes:«
set expandtab
set scrolloff=4

call plug#begin()
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
Plug 'kristijanhusak/deoplete-phpactor'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'neomake/neomake'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>n :Vexplore<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>, :nohl<cr>
nnoremap <leader>G :Goyo<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap !!q :qall!<cr>

function! s:goyo_enter()
    set nolist
    set scrolloff=999
    let g:limelight_conceal_ctermfg = 240
    Limelight
endfunction

function! s:goyo_leave()
    set list
    colorscheme php
    set scrolloff=4
    Limelight!
endfunction

autocmd! User GoyoEnter call <sid>goyo_enter()
autocmd! User GoyoLeave call <sid>goyo_leave()

colorscheme php
