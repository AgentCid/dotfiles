set nocompatible

set mouse=a
set mousemodel=popup

" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" session settings
"set sessionoptions+=resize,winpos

" maximize on startup
autocmd VimEnter * simalt ~x

let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 5
let g:session_autosave_silent = 1

execute pathogen#infect()

syntax on
colorscheme hybrid

if has('gui_running')
    set guifont=Lucida_Console:h8:cANSI
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
"'Super-search': search for the current field in double quotes
nnoremap <leader>/ yi"/<C-r>"<cr>

cd C:\Users\awhittington\Documents

"Persistent undo
set undodir=$VIM\undodir
set undofile

"Swap files
set backupdir=$VIM\vimtmp,.
set directory=$VIM\vimtmp,.
set backup

"Set default filetype for md files to markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"lightline.vim configuration
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ 'inactive': {
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ }
