local config = require("config.formatter")
return {
	'mhartington/formatter.nvim',
	config = function()
		require('formatter').setup(config)
	end,
}
