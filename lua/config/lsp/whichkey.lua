local whichkey = require("which-key")

local opts = {
    mode = "n",
    prefix = "<leader>",
}

local mappings = {
    ['d'] = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },
    ['c'] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
    ['r'] = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
    l = {
        name = "LSP",
        h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
        -- r = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        -- c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
        -- d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature help" },
        F = { "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Formatting" },
        f = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'LSP symbols' },
        d = { "<cmd>lua vim.diagnostic.setqflist()<CR>", "Diagnostics" },
    },
    m = {
        name = "Metals",
        n = { "<cmd>MetalsNewScalaFile<CR>", "New Scala file" },
        o = { "<cmd>MetalsOrganizeImports<CR>", "Organize import" },
        S = { "<cmd>MetalsGenerateBspConfig<CR>", "Use a local build tool (e.g. sbt) as a build server" },
        i = { "<cmd>MetalsInfo<CR>", "Info" },
        s = { "<cmd>lua require('telescope').extensions.metals.commands()<CR>", "Search for commands" },
        l = { "<cmd>MetalsToggleLogs<CR>", "Logs" },
    },
}

whichkey.register(mappings, opts)

