" set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Pathogen ===============================================================
" load pathogens plug-ins
execute pathogen#infect()
" generate helptags for everything in ‘runtimepath’
call pathogen#helptags()


" Pathogens plug-ins configuration =======================================
let NERDTreeIgnore=['\.o$']         " hide *.o files in NERDTree
set updatetime=1000                 " git-gutter update time
nnoremap t :TagbarToggle<CR>        " use t to toogle tagbar

" Misc ===================================================================
set backspace=indent,eol,start      " Configure backspace so it acts as it should act

" Enable filetype plugins
filetype indent on
filetype plugin on


" Colors =================================================================
syntax enable

" Add to .bashrc: TERM=xterm-256color
" Use 256 colours
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" 80 and 120 wrapline marked
if exists('+colorcolumn')
  set colorcolumn=80,120
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif


" Tabs and indents =======================================================
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces inserted for indentation
set expandtab       " tabs are spaces

set autoindent
set smartindent

" Whitespaces ============================================================
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set list

" UI Config ==============================================================
set laststatus=2    " display the status line
set number          " show line numbers
set showmatch       " highlight matching [{()}]

set showcmd                  " show command in bottom bar
set wildmode=longest,list    " TAB completion settings

"set ttyfast         " faster redraw
"set lazyredraw      " redraw only when we need to.


" Searching ==============================================================
" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an
" uppercase letter, it is case sensitive, otherwise, it is not.
set ignorecase
set smartcase
set incsearch       " search as characters are entered
set hlsearch        " highlight all matches


" Keys Mapping ===========================================================
" Use ; to type command in normal and visual mode
nnoremap ; :
vnoremap ; :

" Better movement between splitted windows
nnoremap <silent> <C-Right> <C-w>l
nnoremap <silent> <C-Left> <C-w>h
nnoremap <silent> <C-Up> <C-w>k
nnoremap <silent> <C-Down> <C-w>j
