local whichkey = require("which-key")

local opts = {
    mode = "n",
    prefix = "<leader>",
}

local mappings = {
    D = {
        name = "Debugger",
        r = { "<cmd>lua require'dap'.continue()<CR>", "Run/continue" },
        b = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint" },
        l = { "<cmd>lua require'dap'.run_last()<CR>", "Run last" },
        o = { "<cmd>lua require'dap'.step_over()<CR>", "Step over" },
        i = { "<cmd>lua require'dap'.step_into()<CR>", "Step in" },
        t = { "<cmd>lua require'dap'.repl.toggle()<CR>", "Toggle REPL" },
        u = { "<cmd>lua require'dapui'.toggle()<CR>", "Toggle UI" },
    },
}

whichkey.register(mappings, opts)

