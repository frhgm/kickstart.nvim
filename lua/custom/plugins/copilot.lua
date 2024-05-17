local config = require("config.copilot");

return {
	'zbirenbaum/copilot.lua',
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		--NOTE: Puedo ocupar esta tecnica para mantener estos archivos limpios
		require("copilot").setup(config)
	end,
}
