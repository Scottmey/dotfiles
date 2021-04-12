call plug#begin('~/dotfiles/vim/.vim/plugged')
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/elzr/vim-json'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/isRuslan/vim-es6'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/othree/html5.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-bundler'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/bronson/vim-trailing-whitespace'
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'branch': 'release/0.x',
\ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact']}
call plug#end()

let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier'],
\  'scss': ['prettier'],
\  'html': ['prettier'],
\  'svelte': ['prettier']
\}

Plug 'morhetz/gruvbox'

let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_linters = {'javascript': ['eslint']}

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" NERDTree
" show hidden files
let NERDTreeShowHidden=1
" hide certain files files
let NERDTreeIgnore = ['\.DS_Store$']
" C-e to toggle
nnoremap <C-e> :NERDTreeToggle<CR>


autocmd vimenter * ++nested colorscheme gruvbox
" colorscheme badwolf

filetype plugin indent on

set autochdir
set autoindent
" detect when file has been changed
set autoread
set background=dark
set backspace=eol,start,indent
" osx clipboard sharing
set clipboard=unnamed
set copyindent
" highlight current line
set cul
" adds slight lefthand margin
set expandtab
set foldcolumn=1
" auto-wrap comments using textwidth
set formatoptions-=cro
set guifont=Inconsolata-g:h12
" how many lines of to remember
set history=700
" highlight searched term
set hlsearch
set nocompatible
set nocindent
set noerrorbells
set novisualbell
set nowrap
set number
" search down into subfolders
set path+=**
set paste
set ruler
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set showmatch
" show existing tab with 2 spaces width
set tabstop=2
set whichwrap+=<,>,h,l
set wildmenu

" removes menubar, toolbar and scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

if has("gui_macvim")
	set transparency=05
endif
