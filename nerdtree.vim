" Open NerdTree
nnoremap <leader>N :NERDTreeFind<CR>
" Toggle NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>
" =============================================================================
" NerdTree configurations
" =============================================================================
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" By default show bookmarks
let NERDTreeShowBookmarks = 1
" Store the bookmarks file
let NERDTreeBookmarksFile = expand("$HOME/vim/NERDTreeBookmarks")
let NERDTreeIgnore = ['\.pyc$']" Remove pyc files from NERDTree View
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }
" let NERDTreeChDirMode=2
