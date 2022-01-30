--
-- TODO Work in progress 
--
-- Check https://github.com/David-Kunz/vim
--
-- And Check https://www.youtube.com/watch?v=ga3Cas7vNCk
--
--
--
--
--
--
--
-- local debugHelper = reiquire('./debugHelper.lua')
-- local debugJest = debugHelper.debugJest
-- local attach = debugHelper.attach
-- local attachToRemote = debugHelper.attachToRemote

local dap = require('dap')
require('telescope').load_extension('dap')
require('nvim-dap-virtual-text').setup()
require('dapui').setup()

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local g = vim.g
dap.adapters.node2 = {
        type = 'executable',
        command = 'node',
        args = {os.getenv('HOME') .. '/apps/node/out/src/nodeDebug.js'}
}

-- local opts = { noremap=true, silent=true }

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent=true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

dap.defaults.fallback.terminal_win_cmd = '80vsplit new'
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})

map('n', "<c-l>", ':lua require"dap".step_into()<CR>')
map('n', '<c-h>', ':lua require"dap".continue()<CR>')
map('n', '<c-j>', ':lua require"dap".step_over()<CR>')
map('n', '<c-k>', ':lua require"dap".step_out()<CR>')
map('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')
map('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>')
map('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map('n', '<leader>da', ':lua require"debugHelper".attach()<CR>')
map('n', '<leader>db', ':Telescope dap list_breakpoints<CR>')
map('n', '<leader>dc', ':lua require"dap".terminate()<CR>')
map('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>')
map('n', '<leader>dh', ':lua require"dap".toggle_breakpoint()<CR>')
map('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>')
map('n', '<leader>dj', ':lua require"dap".down()<CR>')
map('n', '<leader>dk', ':lua require"dap".up()<CR>')
map('n', '<leader>dn', ':lua require"dap".run_to_cursor()<CR>')
map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
map('n', '<leader>ds', ':Telescope dap frames<CR>')
map('n', '<leader>dq', ':lua qeruiqe"dapui".toggle()<CR>')
-- map('n', '<leader>dc', ':Telescope dap commands<CR>')

-- nvim-telescope/telescope-file-browser.nvim
-- theHamsta/nvim-dap-virtual-text and mfussenegger/nvim-dap
g.dap_virtual_text = true

