" =============================================================================
" Theme
" =============================================================================

" =============================================================================
" highlight the 80th column
" =============================================================================
hi ColorColumn ctermbg=8

" =============================================================================
" Colorscheme configuration from a plugin ( tender )
" =============================================================================
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
" Prevent ERROR highlighting ( that happens without actual errors
au ColorScheme * highlight Error NONE
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Theme
syntax enable
colorscheme tender
hi Normal guibg=NONE ctermbg=NONE
" colorscheme gruvbox
" colorscheme one
" set background=dark " for the dark version of one colorscheme
" let g:main_font = "Monofur\\ for\\ Powerline:h13"
" let g:small_font = "Monofur\\ for\\ Powerline:h13"

