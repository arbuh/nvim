local whichkey = require("which-key")

local opts = {
    mode = "n",
    prefix = "<leader>",
}

local mappings = {
    l = {
        name = "LSP",
        h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Definition" },
        d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
        D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition" },
    },
}

whichkey.register(mappings, opts)

