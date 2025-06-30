conform = require("conform")
mason_installer = require("mason-tool-installer")

conform.setup({
	formatters_by_ft = {
		-- Make sure you have the formatters installed below via mason-tool-installer!
		java = { "google-java-format" },
		json = { "jq" },
		lua = { "stylua" },
	},
})

mason_installer.setup({
	ensure_installed = {
		"stylua",
		"google-java-format",
		"jq",
	},
	auto_update = true,
	run_on_start = true,
})
