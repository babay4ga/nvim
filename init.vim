call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'posva/vim-vue'
Plug 'ianks/vim-tsx'
Plug 'rust-lang/rust.vim'
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()

set nocompatible
set cole&

colorscheme nord

set number
set showmode
set showcmd
set encoding=utf-8
set autoindent
set ruler
set showmatch
set noswapfile
set nobackup
set autoread
set wildmenu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype plugin indent on
syntax on
highlight LineNr ctermfg=darkGray

let g:indentLine_char = '·'

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

:nnoremap <space>e :CocCommand explorer<CR>

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
