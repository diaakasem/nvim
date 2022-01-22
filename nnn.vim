" Disable default mappings
" let g:nnn#set_default_mappings = 0

" Set custom mappings
nnoremap <silent> <leader>k :NnnPicker<CR>

" Start n³ in the current file's directory
" nnoremap <leader>n :NnnPicker %:p:h<CR>

" Opens the n³ window in a split
" let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
" let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" Floating window. This is the default
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Comment' } }

" to start n³ in detail mode:
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'split',
      \ '<c-v>': 'vsplit' }

" use the same n³ session everywhere (including outside vim)
" let g:nnn#session = 'global'
let g:nnn#session = 'local'

" to start n³ in detail mode:
let g:nnn#command = 'nnn -d -H'
