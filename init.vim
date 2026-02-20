set nocp
set number
set expandtab
set tabstop=8
set softtabstop=2
set shiftwidth=2
set mouse=a
set autoread
set hidden

filetype plugin on

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

nnoremap <SPACE> <Nop>
let mapleader = " "

"Always show current position
set ruler

" Height of the command bar
set cmdheight=8

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

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Always show the status line
set laststatus=2

" Map inserting newline to K
map K i<Enter><Esc>

" Open file explorer in directory of the current file
nnoremap - :Explore<cr>
nnoremap <leader>- :Vexplore %:p:h <cr>

" Allows find to search recursively
set path+=**
set wildmenu
" Ignore certain paths that we don't want to search
set wildignore+=**/node_modules/**,**/vendor/**

source ~/.config/nvim/plugins_config.vim

call plug#begin()
Plug 'github/copilot.vim'

" Other dependencies
Plug 'dense-analysis/ale'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

set background=light
colorscheme morning
