-- Terminal loating windows
return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				persist_mode = false, -- Not to remember the last state, i.e. to always open in the terminal mode
			})

			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		end,
	},
}
