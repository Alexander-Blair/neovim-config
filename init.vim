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

set background=light
colorscheme morning

source ~/.config/nvim/plugins_config.vim

call plug#begin()
" Dependencies for codecompanion
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'github/copilot.vim'

Plug 'olimorris/codecompanion.nvim'

" Other dependencies
Plug 'dense-analysis/ale'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

lua << EOF
require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "copilot",
    },
    inline = {
      adapter = "copilot",
    },
    agent = {
      adapter = "copilot",
    },
  },
  -- This enables the ghost-text style suggestions inside the chat
  display = {
    chat = {
      show_settings = true,
    },
  },
})
EOF
