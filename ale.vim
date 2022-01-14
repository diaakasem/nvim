" ALEFix  use ALE Fixers
au FileType javascript nnoremap <buffer> <leader>l :ALEFix<CR>
" au FileType javascript nnoremap <buffer> <leader>l :ALELint<CR>
" TODO: Check why this does not work.. it should use `ga` to search and find definition
au FileType javascript nnoremap <buffer> <leader>g :ALEGoToDefinition<CR>

" =============================================================================
" ALE Configurations
" =============================================================================
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['tslint']
      \ }
let g:ale_fixers = {
      \ '*': [],
      \ 'javascript': ['remove_trailing_lines', 'trim_whitespace', 'eslint'],
      \ 'typescript': ['tslint']
      \ }
      "\ 'javascript': ['remove_trailing_lines', 'trim_whitespace', 'eslint', 'flow', 'flow-language-server']
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_delay = 2000
let g:ale_lint_delay = 0
let g:ale_lint_on_text_changed = 0
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
" use Ctrl-k and Ctrl-j to jump up and down between errors
" FIXME conflict with window resize
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)


