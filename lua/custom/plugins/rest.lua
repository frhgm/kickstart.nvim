-- rest.nvim
-- Source: https://github.com/rest-nvim/rest.nvim
-- Cliente REST. Ojala pueda reemplazara a Insomnia!

return {
	'rest-nvim/rest.nvim',
	config = function()
		vim.keymap.set('n', "<leader>rc", "<Plug>RestNvim")
	end,
};
