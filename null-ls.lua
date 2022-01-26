local null_ls = require("null-ls")

local sources = {
        -- null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.diagnostics.write_good,
        -- null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.stylua,
}
null_ls.setup({ sources = sources })

keymap("n", "<leader>v", ":lua vim.lsp.buf.formatting_sync()")
