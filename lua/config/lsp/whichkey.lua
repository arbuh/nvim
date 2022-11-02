local whichkey = require("which-key")

local opts = {
    mode = "n",
    prefix = "<leader>",
}

local mappings = {
    ['h'] = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
    ['D'] = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
    c = {
        name = "Code",
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
        u = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature help" },
        f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Formatting" },
        d = { "<cmd>lua vim.diagnostic.setqflist()<CR>", "Diagnostics" },
    },
    m = {
        name = "Metals",
        n = { "<cmd>MetalsNewScalaFile<CR>", "New Scala file" },
        o = { "<cmd>MetalsOrganizeImports<CR>", "Organize import" },
        s = { "<cmd>MetalsStartServer<CR>", "Start server" },
        i = { "<cmd>MetalsInfo<CR>", "Info" },
        p = { "<cmd>MetalsStartServer<CR>", "New Scala project" },
    },
}

whichkey.register(mappings, opts)

