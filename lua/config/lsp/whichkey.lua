local whichkey = require("which-key")

local opts = {
    mode = "n",
    prefix = "<leader>",
}

local mappings = {
    l = {
        name = "LSP",
        h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
        d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
        u = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Code actions" },
        f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Code actions" },
    },
}

--[[ Candidates for mapping:
:MetalsNewScalaFile
MetalsOrganizeImports
]]--

whichkey.register(mappings, opts)

