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
set showbreak=↲
set expandtab
set noswapfile
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
Plug 'wincent/terminus'
Plug 'simnalamburt/vim-mundo'
Plug 'vim-vdebug/vdebug'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-repeat' 
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
call plug#end()

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <silent> <leader>N :NERDTreeFind<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>, :nohl<cr>
nnoremap <leader>G :Goyo 120<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>F :<c-u>execute 'AG ' . expand("<cword>")<cr>
nnoremap !!q :qall!<cr>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

function! s:goyo_enter()
    set nolist
    set scrolloff=999
    let g:limelight_conceal_ctermfg = 240
    set wrap
    set cursorline
    " Limelight
endfunction

function! s:goyo_leave()
    set list
    colorscheme php
    set scrolloff=4
    set nowrap
    set cursorline!
    " Limelight!
endfunction

autocmd! User GoyoEnter call <sid>goyo_enter()
autocmd! User GoyoLeave call <sid>goyo_leave()
autocmd CursorMoved * exe printf('match CursorLine /\V\<%s\>/', escape(expand('<cword>'), '/\'))

command! -bang -nargs=* AG call fzf#vim#ag_raw('--'.expand('%:e').' --hidden --ignore-case --ignore "/tests/" --ignore "/locale/" '.<q-args>, fzf#vim#with_preview('left:30%'), <bang>0)

hi Cursorline ctermbg=0 cterm=NONE
colorscheme php
