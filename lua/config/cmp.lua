local cmp = require("cmp")

-- The main configurations
cmp.setup({
  sources = {
    { name = "nvim_lsp" }, -- LSP
    { name = "buffer" }, -- Word from the open buffers
    { name = "path" }, -- Filesystem paths
    { name = "nvim_lua" }, -- Nvim Lua API
  },
mapping = require('cmp').mapping.preset.insert({
  -- Use Tab to select the next item
  ['<Tab>'] = function(fallback)
    if require('cmp').visible() then
      require('cmp').select_next_item()
    else
      fallback()
    end
  end,
  -- Use Tab+Shift to select the previous item
  ['<S-Tab>'] = function(fallback)
    if require('cmp').visible() then
      require('cmp').select_prev_item()
    else
      fallback()
    end
  end,
  -- Safely use Enter to chose the selected item
  ["<CR>"] = cmp.mapping({
       i = function(fallback)
         if cmp.visible() and cmp.get_active_entry() then
           cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
         else
           fallback()
         end
       end,
       s = cmp.mapping.confirm({ select = true }),
       c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
     }),
  }),
})


-- Setup for the command line search mode
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

-- Setup for the command line completions
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      })
    })

