" =============================================================================
" making command r that opens a new window with the output of the following command
" =============================================================================
"command! -nargs=* -complete=shellcmd r new | setlocal buftype=nofile bufhidden=hide noswapfile | silent r !<args>
