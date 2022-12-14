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
        u = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature help" },
        f = { "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Formatting" },
        d = { "<cmd>lua vim.diagnostic.setqflist()<CR>", "Diagnostics" },
    },
    m = {
        name = "Metals",
        n = { "<cmd>MetalsNewScalaFile<CR>", "New Scala file" },
        o = { "<cmd>MetalsOrganizeImports<CR>", "Organize import" },
        s = { "<cmd>MetalsStartServer<CR>", "Start server" },
        i = { "<cmd>MetalsInfo<CR>", "Info" },
        p = { "<cmd>MetalsStartServer<CR>", "New Scala project" },
        s = { "<cmd>lua require('telescope').extensions.metals.commands()<CR>", "Search for commands" },
        l = { "<cmd>MetalsToggleLogs<CR>", "Logs" },
    },
}

whichkey.register(mappings, opts)

