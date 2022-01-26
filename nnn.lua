local nnn = require("nnn")
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local builtin = nnn.builtin
local cfg = {
	explorer = {
		cmd = "nnn -H",       -- command overrride (-F1 flag is implied, -a flag is invalid!)
		width = 33,        -- width of the vertical split
		side = "topleft",  -- or "botright", location of the explorer window
		session = "shared",      -- or "global" / "local" / "shared"
		tabs = true,       -- seperate nnn instance per tab
	},
	picker = {
		cmd = "nnn -d -H",       -- command override (-p flag is implied)
		style = {
			width = 0.9,     -- percentage relative to terminal size when < 1, absolute otherwise
			height = 0.8,    -- ^
			xoffset = 0.5,   -- ^
			yoffset = 0.5,   -- ^
			border = "single"-- border decoration for example "rounded"(:h nvim_open_win)
		},
		session = "shared",      -- or "global" / "local" / "shared"
	},
	auto_open = {
		setup = "explorer",       -- or "explorer" / "picker", auto open on setup function
		tabpage = "picker",     -- or "explorer" / "picker", auto open when opening new tabpage
		empty = true,     -- only auto open on empty buffer
		ft_ignore = {      -- dont auto open for these filetypes
			"gitcommit",
		}
	},
	auto_close = false,  -- close tabpage/nvim when nnn is last window
	replace_netrw = "explorer", -- or "explorer" / "picker"
	windownav = {        -- window movement mappings to navigate out of nnn
		left = "<C-w>h",
		right = "<C-w>l"
	},
	mappings = {                                    -- table containing mappings, see below
		{ "<C-t>", builtin.open_in_tab },       -- open file(s) in tab
		{ "<C-s>", builtin.open_in_split },     -- open file(s) in split
		{ "<C-v>", builtin.open_in_vsplit },    -- open file(s) in vertical split
		{ "<C-p>", builtin.open_in_preview },   -- open file in preview split keeping nnn focused
		{ "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
		{ "<C-w>", builtin.cd_to_path },        -- cd to file directory
		{ "<C-e>", builtin.populate_cmdline },  -- populate cmdline (:) with file(s)
	},
}


-- picker = {
	 -- cmd = "tmux new-session nnn -Pp",
	 -- style = { border = "rounded" },
	 -- session = "shared",
	 -- },
	 -- replace_netrw = "picker",
	 -- window_nav = "<C-l>"
-- }
nnn.setup(cfg)
map("n", "<leader>n", ":NnnExplorer %:p:h<CR>", default_opts)
map("n", "<leader>p", ":NnnPicker %:p:h<CR>", default_opts)
-- tnoremap <C-A-n> <cmd>NnnExplorer<CR>
-- nnoremap <C-A-n> <cmd>NnnExplorer %:p:h<CR>
-- tnoremap <C-A-p> <cmd>NnnPicker<CR>
-- nnoremap <C-A-p> <cmd>NnnPicker<CR>
