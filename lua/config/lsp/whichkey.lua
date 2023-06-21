local whichkey = require("which-key")

local normal_opts = {
    mode = "n",
    prefix = "<leader>",
}

local function register_lsp_mappings()
    local mappings = {
        ['d'] = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },
        ['a'] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
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
    }

    whichkey.register(mappings, normal_opts)
end

local function register_code_mappings()
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function()
            vim.schedule(CodeMappings)
        end,
    })
end

function CodeMappings()
    local buffer_nr = vim.api.nvim_get_current_buf()
    local file_type = vim.api.nvim_buf_get_option(buffer_nr, "filetype")
    local mappings = {}

    if file_type == "scala" then
        mappings = {
            name = "Code",
            n = { "<cmd>MetalsNewScalaFile<CR>", "New Scala file" },
            o = { "<cmd>MetalsOrganizeImports<CR>", "Organize import" },
            i = { "<cmd>MetalsInfo<CR>", "Info" },
            m = { "<cmd>lua require('telescope').extensions.metals.commands()<CR>", "Search for Metals commands" },
            l = { "<cmd>MetalsToggleLogs<CR>", "Toggle logs" },
        }
    elseif file_type == "python" then
        mappings = {
            name = "Code",
            r = { "<cmd>update<CR><cmd>exec '!python3' shellescape(@%, 1)<cr>", "Run" },
        }
    end

    whichkey.register({c = mappings}, normal_opts)
end

register_lsp_mappings()
register_code_mappings()
