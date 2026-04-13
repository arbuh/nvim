conform = require("conform")
mason_installer = require("mason-tool-installer")

conform.setup({
	formatters_by_ft = {
		-- Make sure you have the formatters installed below via mason-tool-installer!
		go = { "goimports" },
		java = { "google-java-format" },
		javascript = { "prettier" },
		json = { "jq" },
		lua = { "stylua" },
		-- rust = { "rustfmt" },
		typescript = { "prettier" },
	},
})

mason_installer.setup({
	ensure_installed = {
		"goimports",
		"google-java-format",
		"jq",
		"prettier",
		-- "rustfmt",
		"stylua",
	},
	auto_update = true,
	run_on_start = true,
})
