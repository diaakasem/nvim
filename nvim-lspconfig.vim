Plug 'neovim/nvim-lspconfig' 

" npm i -g pyright 
lua << EOF
require'lspconfig'.pyright.setup{}
EOF
