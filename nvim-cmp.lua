-- Setup nvim-cmp.
local cmp = require'cmp'
local compare = require('cmp.config.compare')
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
local lspconfig = require('lspconfig')

-- function M.expand_or_jump_forwards(fallback)
  -- M.compose({ "expand", "jump_forwards", "select_next_item" })(fallback)
-- end

-- function M.jump_backwards(fallback)
  -- M.compose({ "jump_backwards", "select_prev_item" })(fallback)
-- end

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
    end, { "i", "s", [[ "c" (to enable the mapping in command mode) ]] }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      cmp_ultisnips_mappings.jump_backwards(fallback)
    end, { "i", "s", [[ "c" (to enable the mapping in command mode) ]] }),

    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4)),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4)),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'cmp_tabnine' },
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    { name = 'buffer' },
  }),
  sorting = {
    priority_weight = 2,
    comparators = {
      compare,
      compare.offset,
      compare.exact,
      compare.score,
      compare.recently_used,
      compare.kind,
      compare.sort_text,
      compare.length,
      compare.order,
    },
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = lspkind.presets.default[vim_item.kind]
      local menu = source_mapping[entry.source.name]
      if entry.source.name == 'cmp_tabnine' then
        if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
          menu = entry.completion_item.data.detail .. ' ' .. menu
        end
        vim_item.kind = ''
      end
      vim_item.menu = menu
      return vim_item
    end
  },
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- " require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  -- " capabilities = capabilities
-- }

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
        'bashls',
        'pyright',
        'tsserver',
        'ansiblels',
        'dockerls',
        'eslint',
        'groovyls',
        'html',
        'jsonls',
        'pyright',
        'solc',
        'sqlls',
        'sumneko_lua',
        'terraformls',
        'tsserver',
        'vimls',
        'yamlls',
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

