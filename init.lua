require("config.general")
require("config.keymaps")

require("config.lazy")

for name, type in vim.fs.dir(vim.fn.stdpath("config") .. "/lua/config/plugins") do
	if type == "file" and name:match("%.lua$") then
		local module_name = name:gsub("%.lua$", "")
		require("config.plugins." .. module_name)
	end
end

