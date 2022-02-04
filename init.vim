"=======================================================================
" Author : Diaa Mohamed Kasem
" Date   : 24 May 2012
" VIM Configuration File
"=======================================================================

" change the leader to be a comma vs slash
let mapleader=","

source ~/.config/nvim/r-command.vim
source ~/.config/nvim/filetypes.vim
source ~/.config/nvim/old-vim-config.vim

" Build arduino code
" noremap <silent> <F8> :w<CR>:silent !cd ..; ino clean; ino build; ino upload; cd -<CR>
" =============================================================================
" My Bundles here: using vim-plug
" =============================================================================
call plug#begin('~/.vim/plugged')

" Plug 'Chiel92/vim-autoformat'
" Themes
"
" Plug 'junegunn/fzf'
" Plug 'dense-analysis/ale'
" Plug 'jisaacks/GitGutter'
" Plug 'vim-scripts/vimagit'
"
" My Theme
Plug 'jacoborus/tender.vim'
" Base Plugins
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-rooter'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'fvictorio/vim-extract-variable'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-signify'
Plug 'myusuf3/numbers.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rakr/vim-one'
Plug 'rking/ag.vim'
Plug 'rstacruz/vim-xtract'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'troydm/zoomwintab.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh && npm install -g flow-bin' }
Plug 'docunext/closetag.vim', { 'for': ['html'],  'do': 'make install' }
Plug 'hashivim/vim-terraform', { 'for': ['terraform'] }
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx', 'typescript'], 'do': 'make install' }
Plug 'juliosueiras/vim-terraform-completion', { 'for': ['terraform'] }
Plug 'luukvbaal/nnn.nvim'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'vim-scripts/bash-support.vim', { 'for': 'shell' }
Plug 'vim-scripts/yaml.vim', { 'for': 'yaml' }
Plug 'williamboman/nvim-lsp-installer', { 'branch': 'main' }
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'fatih/vim-go'
call plug#end()

" Was unable to install it using PlugInstall
" So copied the source for now - if you have a better way
" do it 
" Plug 'tpope/vim-abolish' " , { 'on': ['GHDashboard', 'GHActivity'] }
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'cwood/ultisnips-terraform-snippets'
" Plug 'vifm/vifm.vim', {'do': ':Vifm'}
" Plug 'isRuslan/vim-es6'
" Plug 'tomlion/vim-solidity'
" Plug 'jceb/vim-orgmode'
" Plug 'dbakker/vim-projectroot'
" Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
" Plug 'RishabhRD/popfix'
" Plug 'majutsushi/tagbar'
" Plug 'scrooloose/nerdtree' " , { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tomasr/molokai'

" Needed not to have errors
luafile ~/.config/nvim/nvim-lspconfig.lua
luafile ~/.config/nvim/nvim-lsp-installer.lua
luafile ~/.config/nvim/nvim-treesitter.lua
luafile ~/.config/nvim/coq.lua
luafile ~/.config/nvim/nnn.lua
luafile ~/.config/nvim/nvim-dap.lua
" luafile ~/.config/nvim/null-ls.lua
" luafile ~/.config/nvim/tabnine.lua
"
source ~/.config/nvim/vim-terraform.vim
" for crc crm crs changing cases
source ~/.config/nvim/abolish.vim
" source ~/.config/nvim/ale.vim
source ~/.config/nvim/telescope.vim
" source ~/.config/nvim/nnn.vim
source ~/.config/nvim/zoomwintab.vim
source ~/.config/nvim/airline.vim
" source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/vimwiki.vim
source ~/.config/nvim/macros.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/vim-xtract.vim
source ~/.config/nvim/prettier.vim
" source ~/.config/nvim/colemak-mappings.vim


" source ~/.config/nvim/ultisnips.vim
" source ~/.config/nvim/nerdtree.vim
" source ~/.config/nvim/coq.vim
source ~/.config/nvim/easy-align.vim
" source ~/.config/nvim/indent-guides.vim
" source ~/.config/nvim/vifm.vim

" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
