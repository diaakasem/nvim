-- local lsp = require "lspconfig"
-- local coq = require "coq" -- add this
vim.g.coq_settings = {auto_start = true, clients = {tabnine = {enabled = true}}}
local coq = require('coq')
vim.cmd('COQnow')

