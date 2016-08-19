set nocompatible

"Turn mouse on for terminal too
set mouse=a
set mousemodel=popup

" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

"Set up autosave settings for vim-session
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 5
let g:session_autosave_silent = 1
let g:session_directory = "~/.vim"

"Fix block cursor when using ssh and cygwin
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"Fix vim not knowing how to use fish
if &shell =~# 'fish$'
    set shell=bash
endif

execute pathogen#infect()

syntax on
colorscheme hybrid

"Fix weird light background in ssh session
set background=dark

if has('gui_running')
    set guifont=Lucida\ Console\ Semi-Condensed\ 8
endif

set number
set wildmenu
set showmatch
set incsearch
set ignorecase
set smartcase
set nohlsearch

set history=500
set ruler
set showcmd
set autoindent
set backspace=indent,eol,start

set noswapfile

set laststatus=2
set splitright
set splitbelow

"word wrapping
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set display+=lastline

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"home key goes to non-whitespace
map <Home> g^
imap <Home> <Esc>g^i

map <End> g$
imap <End> <Esc>g$a

"Make arrow keys scroll with visual lines
"noremap j gj
"noremap k gk
"noremap <Down> gj
"noremap <Up> gk

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

let mapleader=","

cd $HOME

"Persistent undo
set undodir=~/.vim/undodir
set undofile

"Swap files
set backupdir=~/.vim/vimtmp,.
set directory=~/.vim/vimtmp,.
set backup

"Fix background colors being wonky
set t_ut=

"Set default filetype for md files to markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
