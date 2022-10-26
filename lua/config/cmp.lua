local cmp = require("cmp")
cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "buffer" },
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  formatting = {
      format = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          buffer = "[Buffer]",
          vsnip = "[Snip]",
        })[entry.source.name]
        return vim_item
      end,
    },
  mapping = cmp.mapping.preset.insert({
    -- To activate snippets
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
})

