execute pathogen#infect()

filetype plugin on

filetype on
syntax on

" THEME & LAYOUT
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h14
set lines=35 columns=150
set colorcolumn=90
set number

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

" PERFORMANCES & HISTORY
set hidden
set history=100

" TEXT FORMATTING
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" SEARCH
set hlsearch
" Ability to cancel a search with Escape:
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" USE ARROWS
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" Show Matching Parenthesis
set showmatch

" PLUGINS
noremap <Leader>r :CommandTFlush<CR>

let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

let g:gitgutter_sign_column_always=1
