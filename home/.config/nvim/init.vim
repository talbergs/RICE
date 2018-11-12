let mapleader="\<Space>"
colorscheme php
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

call plug#begin()
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
Plug 'kristijanhusak/deoplete-phpactor'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'neomake/neomake'
call plug#end()

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>n :Vexplore<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>, :nohl<cr>
nnoremap !!q :qall!<cr>

