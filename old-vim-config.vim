au BufWritePre init.vim call source ~/.config/nvim/init.vim

" ===============
" basic settings
" ===============
" syntax highlighing
syntax on
syntax enable
filetype plugin on
" enable loading indent file for filetype
filetype plugin indent on
" always set autoindenting on
set autoindent
" we are using dark background in vim
set background=dark
" allow backspacing over autoindent, eol, and bol
" set backspace=2
" change backupdir ,/var/tmp,/tmp
set backupdir=~/.vim/tmp,~/.tmp,~/tmp
" make command line two lines high
set ch=1
set cindent
" add the unnamed register to the clipboard
" set clipboard+=unnamedplus
set clipboard=unnamed,unnamedplus
" set clipboard=unnamed
" set clipboard+=unnamed
set colorcolumn=80
" set completeopt=menu,menuone,noselect
" y-n-c prompt if closing with unsaved changes.
set confirm
" have a line indicate the cursor location
set cursorline
" add ignorance of whitespace to diff
set diffopt+=iwhite
" ,/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,~/tmp
" use spaces, not tabs, for autoindent/tab key.
set expandtab
" try recognizing dos, unix, and mac line endings.
set ffs=unix,dos,mac
set fillchars +=stl:\ ,stlnc:\
" get rid of the silly characters in separators
set fillchars=""
" this is just what i use
set foldlevel=1
" fold based on syntax ( indent, syntax, manual )
set foldmethod=indent
" deepest fold is 10 levels
set foldnestmax=99
set guioptions+=a
" better handling for the buffers
set hidden
" set the commands history to 1000
set history=1000
" highlight searches by default.
set hlsearch
" default to using case insensitive searches,
set ignorecase
" incrementally search while typing a /regex
set incsearch
" set the filename:linenumber delimiter to be colon
set isfname-=:
" always show statusline, even if only 1 window.
set laststatus=2
" allow vim options to be embedded in files
set modeline
" they must be within the first or last 5 lines.
set modelines=3
" enable mouse interactions
set mouse=a
" don't automatically re-read changed files. ( use <leader>re to reload )
set noautoread
" never write a file unless i request it.
set noautowrite
" never.
set noautowriteall
" vim>vi
set nocompatible
set noerrorbells visualbell t_vb=
" dont fold by default
set nofoldenable
" avoid moving cursor to bol when jumping around
set nostartofline
" don't wrap text
set nowrap
" set number formats to only decimal
set nrformats=
" display line numbers
set number
" using only 1 column (and 1 space) while possible
set numberwidth=1
" set ofu=syntaxcomplete#complete
" printing options
set printoptions=header:0,duplex:long,paper:letter
" keep a small completion window
set pumheight=10
" : commands always print changed line count.
set report=0
" keep 8 context lines above and below the cursor
set scrolloff=8
" rounds indent to a multiple of shiftwidth
set shiftround
" use [+]/[ro]/[w] for modified/readonly/written.
set shortmess+=a
" show incomplete normal mode commands as i type.
set showcmd
" when completing by tag, show the whole tag, not just the function name
set showfulltag
" briefly jump to a paren once it's balanced
set showmatch
" show the current mode
set showmode
" unless uppercase letters are used in the regex.
set smartcase
" use smart indent if there is no indent file
set smartindent
" handle tabs more intelligently
set smarttab
" show title in console title bar
set title
" disable all bells.  i hate ringing/flashing.
set vb t_vb=
" let cursor move past the last char in <c-v> mode
set virtualedit=block
" ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc,eggs/**,*.egg-info/**
" set the search scan to wrap lines
set wrapscan
" set pastetoggle=<f8>
au filetype javascript setl foldmethod=syntax nofoldenable

" editorconfig
let g:editorconfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:editorconfig_exec_path = system('which editorconfig')
let g:minibufexplforcesyntaxenable = 1

set runtimepath+=~/.vim/plugged
set runtimepath+=~/.vim/personal
" =============================================================================
" encoding utf-8
" =============================================================================
set encoding=utf-8
set termencoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=utf-8,latin1

" =============================================================================
" auto change directory to where the opened file is opened
" =============================================================================
" set autochdir
" better than autochdir
au bufenter * silent! lcd %:p:h

" ====================================================
" commands
" ====================================================
" sample command w - save as root
" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

" ====================================================
" Global Key Mappings / Assignments 
" ====================================================
" change the behavior of the <Enter> key when the popup menu is visible.
" to select the highlighted menu item

" Make jj in insert mode to go to ESC
inoremap jj <esc>
" Have Enter to go to command line ( do not put that comment in the same line )
" I actually found that I use ; alot 
nnoremap ; :
nnoremap <C-n> ;
" Increase window left
noremap <C-h> <C-W><
" Increase window right
noremap <C-l> <C-W>>
" Move window up
noremap <C-k> <C-W>-
" Move window down
noremap <C-j> <C-W>+
" Bubble single & multiple lines
noremap <S-Up> ddkP
noremap <S-Down> ddp
vnoremap <S-Up> xkP`[V`]
vnoremap <S-Down> xp`[V`]
" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv
" Scroll faster Down
" noremap <C-e> 4<C-e>
" Scroll faster Up
" noremap <C-y> 4<C-y>
" aopen file if not existing when gf
noremap <leader>gf :e <cfile><cr>

" ====================================================
" Global Leader Mapping / Assignments 
" Window global Leader Mappings
" ====================================================
" Save window on <leader>w
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>W :w!<CR>
" Quit window on <leader>q
noremap <silent> <leader>q :q<CR>
noremap <silent> <leader>Q :q<CR>

" Turning off highlighing
nnoremap <leader>b :silent :nohlsearch<CR>
nnoremap <leader>f :CtrlPMixed<CR>
" Split the same window
nnoremap <leader>h :sp<CR>
" Opem Most Recently Used :MRU  - Dont add comments afterwards
nnoremap <leader>m :CtrlPMRU<CR>
" Toggle the BufExplorer
nnoremap <leader>o :CtrlPBuffer<CR>
" Paste from clipboard
nnoremap <leader>p <C-R><C-P>.
" Reload buffer
nnoremap <leader>re :e <CR>
nnoremap <leader>s :vsp<CR>
nnoremap <leader>sb :window set scrollbind! <CR>
" Opens a new empty tab
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>x <c-w>

" ====================
" Git Commands
" ====================
nnoremap <leader>gL :Git log<CR>
nnoremap <leader>ga :!git add %<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>ge :Git edit<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gg :Git grep<CR>
nnoremap <leader>gl :Git log --follow %<CR>
nnoremap <leader>gP :Git pull<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gs :Git status<CR>
" Dangerous
" nnoremap <leader>gA :!git add . --all<CR>

" ==================
" Javascript leader mappings
" ==================
" Execute node on the current line
au FileType javascript nnoremap <buffer> <leader>e :.!node <CR>

" ==================
" JSON leader mappings
" ==================
" Formats a .json file
au FileType json nmap <leader>F :% !cat % \| jq '.'<CR>

" ====================
" Shell Leader Mappings
" ====================
" Execute bash on the current line
au FileType shell nmap <leader>e :.!bash <CR>  

" ==============
" HTML Leader Mappings
" ==============
" for html
au FileType html nmap <buffer> <leader>; :call HtmlBeautify()<cr>
au FileType html vmap <buffer> <leader>; :call RangeHtmlBeautify()<cr>
" au FileType html nmap <buffer> <leader>= :Autoformat<CR>

" ==============
" VIMRC Leader mappings
" ==============
au FileType vimrc nnoremap <leader>v :w!<CR>:so%<CR>:PlugInstall<CR>
nnoremap <leader>V :tabnew ~/.config/nvim/init.vim <CR>

