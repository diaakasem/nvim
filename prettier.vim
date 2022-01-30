" au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
" nnoremap <leader>P :Prettier<CR>

au FileType javascript,typescript nmap <leader>P :% !cat % \| jq '.'<CR>
au BufWritePre *.js,*.ts exec ":Prettier.Autoformat()"
