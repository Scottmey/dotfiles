" using pathogen packages installed as submodules
execute pathogen#infect()

let g:ale_linters = {'javascript': ['eslint']}

" NERDTree
" show hidden files
let NERDTreeShowHidden=1
" hide certain files files
let NERDTreeIgnore = ['\.DS_Store$']
" C-e to toggle
nnoremap <C-e> :NERDTreeToggle<CR>

colorscheme badwolf

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
