autocmd StdinReadPre * let s:std_in=1

"""""""""""""""""
" netrw
"""""""""""""""""
let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_winsize = 20
let g:netrw_preview = 1

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
