"""""""""""""""""
" NERDTree config
"""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let g:NERDTreeWinSize=45
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"""""""""""""""""
" vim-iced
"""""""""""""""""
let g:iced_enable_default_key_mappings = v:true
map <leader>b :IcedBarf<cr>
map <leader>s :IcedSlurp<cr>
map <leader>e :IcedEval
map <leader>v :IcedEvalVisual<cr>

"""""""""""""""""
" vim-test
"""""""""""""""""
let test#strategy = "neovim"
map <leader>tf :TestFile<cr>
map <leader>ts :TestSuite<cr>
map <leader>tl :TestLast<cr>
map <leader>tn :TestNearest<cr>

"""""""""""""""""
" Ale
"""""""""""""""""
" Disabling highlighting
let g:ale_set_highlights = 0
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'] }

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

"""""""""""""""""
" Leaderf
"""""""""""""""""
let g:Lf_WindowPosition = 'popup'
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
