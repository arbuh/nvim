local null_ls = require("null-ls")

local conf = {
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.google_java_format,
    },
}

null_ls.setup(conf)
