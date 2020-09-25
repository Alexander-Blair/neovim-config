set number
set expandtab
set tabstop=8
set softtabstop=2
set shiftwidth=2
set mouse=a
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font according to system
if has("mac") || has("macunix")
    set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

try
  colorscheme gruvbox
catch
endtry

let mapleader = ","

"Always show current position
set ruler

" Height of the command bar
set cmdheight=8

" A buffer becomes hidden when it is abandoned
set hid

" Ignore case when searching
set ignorecase
set smartcase
" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Add a bit extra margin to the left
set foldcolumn=1

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Always show the status line
set laststatus=2

" Map inserting newline to K
map K i<Enter><Esc>

source ~/.config/nvim/plugins_config.vim

call plug#begin()
Plug 'dense-analysis/ale'
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'janko/vim-test'
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/LeaderF'
call plug#end()
