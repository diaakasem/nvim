" =============================================================================
" CtrlP Configurations - Using The Silver Searcher `ag` instead of grep or ack
" =============================================================================
" sudo apt install silversearcher-ag
" brew install the_silver_searcher
nnoremap <leader>f :CtrlPMixed<CR>
" Opem Most Recently Used :MRU  - Dont add comments afterwards
nnoremap <leader>m :CtrlPMRU<CR>
" Toggle the BufExplorer
nnoremap <leader>o :CtrlPBuffer<CR>
if executable('ag')
  " Use ag over grep or ack
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP does't need to cache
  let g:ctrl_user_caching = 0
endif
let g:ctrlp_working_path_mode = 'ra'
