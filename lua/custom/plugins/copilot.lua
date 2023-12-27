local config = require("config.copilot");

return {
	'zbirenbaum/copilot.lua',
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup(config)
	end,
}
