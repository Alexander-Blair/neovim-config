autocmd StdinReadPre * let s:std_in=1

"""""""""""""""""
" netrw
"""""""""""""""""
let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_winsize = 25
let g:netrw_preview = 1

"""""""""""""""""
" Ale
"""""""""""""""""
" Disabling highlighting
let g:ale_set_highlights = 0
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'ruby': ['rubocop'] }

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Open the CodeCompanion actions menu (Refactor, Explain, Fix, etc.)
nnoremap <C-a> :CodeCompanionActions<CR>
vnoremap <C-a> :CodeCompanionActions<CR>

" Toggle the Chat window
nnoremap <leader>ac :CodeCompanionChat Toggle<CR>
vnoremap <leader>ac :CodeCompanionChat Toggle<CR>

" Inline prompt - ask a question about a specific line or selection
nnoremap <leader>ai :CodeCompanion 
vnoremap <leader>ai :CodeCompanion

" Disable autocomplete and use Copilot only for CodeCompanion actions
let g:copilot_filetypes = {'*': v:false}

" By default open Git Fugitive in a new tab and jump to the first commit
nnoremap <leader>gs :tab Git<CR> 6G
