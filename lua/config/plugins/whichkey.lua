local whichkey = require('which-key')
local git_helpers = require('utils.git_helpers')

-- Special bars
whichkey.add({
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree (explorer)", mode = "n" },
    { "<leader>t", "<cmd>ToggleTerm size=20<cr>", desc = "Toggle terminal", mode = "n" },
    { "<leader>t", "<cmd>ToggleTerm size=20<cr>", desc = "Toggle terminal", mode = "t" }, -- For terminal mode
})

-- Plugin management
whichkey.add({
    { "<leader>p", group = "Plugins" },
    { "<leader>pl", "<cmd>Lazy<cr>", desc = "Open Lazy dashboard", mode = "n" },
    { "<leader>pm", "<cmd>Mason<cr>", desc = "Open Mason dashboard", mode = "n" },
})

-- Search
local builtin = require('telescope.builtin')
whichkey.add({
    { "<leader>f", group = "Search" },
    { "<leader>ff", builtin.find_files, desc = "Search for files", mode = "n" },
    { "<leader>fb", builtin.buffers, desc = "List current buffers", mode = "n" },
    { "<leader>b", builtin.grep_string, desc = "Search for current selection/cursor", mode = "n" },
    { "<leader>fg", builtin.live_grep, desc = "Live grep", mode = "n" },
    { "<leader>fo", builtin.oldfiles, desc = "Search for previously opened files", mode = "n" },
    { "<leader>fl", builtin.lsp_dynamic_workspace_symbols, desc = "Search for LSP symbols", mode = "n" },
    { "<leader>fr", "<cmd>GrugFar<cr>", desc = "Search and replace", mode = "n" },
})

-- Git
whichkey.add({
    { "<leader>g", group = "Git" },
    { "<leader>gb", "<cmd>BlameToggle<cr>", desc = "Toggle Git blame", mode = "n" },
    { "<leader>gl", function() Snacks.git.blame_line() end, desc = "Show history for the line", mode = "n" },
    { "<leader>go", function() Snacks.gitbrowse() end, desc = "Open the repo of the file in the browser", mode = "n" },
    { "<leader>gdl", "<cmd>DiffviewOpen<cr>", desc = "Diff with local", mode = "n" },
    { "<leader>gdo", function() git_helpers.diff_with_main() end, desc = "Diff with origin", mode = "n" },
    { "<leader>gdc", "<cmd>DiffviewClose<cr>", desc = "Close diff", mode = "n" },
})

-- LSP
whichkey.add({
    { "<leader>d", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open diagnostics", mode = "n" },
    { "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code actions", mode = "n" },
    { "<leader>h", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover", mode = "n" },
    { "<leader>c", group = "Code" },
    { "<leader>cf", function() require("conform").format() end, desc = "Format code", mode = "n" },
    { "<leader>cR", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename", mode = "n" },
    { "<leader>cr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "List references", mode = "n" },
    { "<leader>cs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Shot signature help", mode = "n" },
    { "<leader>cd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to definition", mode = "n" },
    { "<leader>cD", "<cmd>lua vim.diagnostic.setqflist()<cr>", desc = "List diagnostic messages", mode = "n" },
    { "<leader>cs", "<cmd>LspRestart<cr>", desc = "Restart LSP server", mode = "n" },
})

-- We disable gitgutter key maps, otherwise they hijack the 'h' letter mappings
vim.g.gitgutter_map_keys = 0
