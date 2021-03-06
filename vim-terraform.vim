" (Optinal) for Tag Sidebar
" Syntastic Config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
" set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
" let g:syntastic_terraform_tffilter_plan = 0

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
" let g:terraform_completion_keys = 0

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
" let g:terraform_registry_module_completion = 0


" Deoplete
" let g:deoplete#omni_patterns = {}

" call deoplete#custom#option('omni_patterns', {
" \ 'complete_method': 'omnifunc',
" \ 'terraform': '[^ *\t"{=$]\w*',
" \})

" call deoplete#initialize()

" Causing usse with terraform v0.11
" au BufWritePre,FileWritePre *.tf :TerraformFmt
