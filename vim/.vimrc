"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
set nocompatible

let g:ale_linters = {'javascript': ['eslint']}

" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Hide system files from NERDTRee
let NERDTreeIgnore = ['\.DS_Store$']

" Toggle NERDTree Window
nnoremap <C-e> :NERDTreeToggle<CR>

" Search down into subfolders
set path+=**

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MacVim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_macvim")
	" Sets a light transparency
	set transparency=05
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Colorscheme
" colorscheme gruvbox
" colorscheme goodwolf
colorscheme badwolf

" Set background Color
set background=dark

" Set Font Family
set guifont=Inconsolata-g:h12

" Enable syntax highlighting
syntax on

" Highlight current line
set cul

" Highlight Search term
set hlsearch

" Enable Colors
set t_Co=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Be smart when using tabs ;)
" set smarttab

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Auto-wrap comments using textwidth
set formatoptions-=cro

" Mac OS X clipboard sharing
set clipboard=unnamed

" in makefiles, don't expand tabs to spaces, since actual tab characters are needed
autocmd FileType make setlocal noexpandtab nosmarttab shiftwidth=8 softtabstop=0 tabstop=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Disable line breaking
set nowrap

" set autoindenting
set paste
set autoindent
set nocindent

" copy the previous indentation on autoindenting
set copyindent

" Show Line Numbers
set number

" Remove Menu Bar
:set guioptions-=m

"Remove Toolbar
:set guioptions-=T

"Remove Scrollbars
:set guioptions-=r
:set guioptions-=R
:set guioptions-=l
:set guioptions-=L

" Ignore Case when Searching
set ignorecase

" Makes search act like search in modern browsers
set incsearch

" Set working directory to current file
set autochdir

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
 	set mouse=a
endif

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" vim-javascript
let javascript_enable_domhtmlcss=1
