set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

set mousemodel=popup

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

"Personal Settings 
execute pathogen#infect()

syntax on
colorscheme hybrid

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

"Save session on exit, and restore on start
set sessionoptions-=options
fu! SaveSess()
    if argc() == 0
        execute 'mksession! ' . $HOME . '/.session.vim'
    endif
endfunction

fu! RestoreSess()
    if argc() == 0
        if filereadable($HOME . '/.session.vim')
            execute 'so ' . $HOME . '/.session.vim'
        endif
    endif
endfunction

autocmd VimLeave * call SaveSess()
autocmd VimEnter * call RestoreSess()

"Folding

set foldmethod=syntax
set foldlevelstart=99

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

"Persistent undo
set undodir=~/.vim/undodir
set undofile

"Swap files
set backupdir=~/.vim/vimtmp,.
set directory=~/.vim/vimtmp,.
