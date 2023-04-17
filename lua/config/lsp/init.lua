require("config.lsp.whichkey")

require("mason").setup()

local lsp_config = require('lspconfig')

-- Configure the language servers
local language_servers = {
    "html",
    "jsonls",
    "lua_ls",
    "pyright",
    "vimls",
}

require("mason-lspconfig").setup {
    ensure_installed = language_servers,
}

local function setup_language_server(name)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    local on_attach = function(client, bufnr)
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    end

    lsp_config[name].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end

for _, ls_name in ipairs(language_servers) do
  setup_language_server(ls_name)
end

-- Configurations per language
-- Lua
lsp_config.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

-- Configure separately Metals since lspconfig is not used for Scala
require("config.lsp.metals")

