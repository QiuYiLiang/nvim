local lspkind = require('lspkind')
local cmp = require 'cmp'

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, { { name = 'buffer' },
    { name = 'path' }
  }),

  mapping = {
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' })
  },
  formatting = {
    -- kind_icons = {
    --   Class = " ",
    --   Color = " ",
    --   Constant = "ﲀ ",
    --   Constructor = " ",
    --   Enum = "練",
    --   EnumMember = " ",
    --   Event = " ",
    --   Field = " ",
    --   File = "",
    --   Folder = " ",
    --   Function = " ",
    --   Interface = "ﰮ ",
    --   Keyword = " ",
    --   Method = " ",
    --   Module = " ",
    --   Operator = "",
    --   Property = " ",
    --   Reference = " ",
    --   Snippet = " ",
    --   Struct = " ",
    --   Text = " ",
    --   TypeParameter = " ",
    --   Unit = "塞",
    --   Value = " ",
    --   Variable = " ",
    -- },
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50,
      before = function(entry, vim_item)
        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
        return vim_item
      end
    })
  },
}

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
