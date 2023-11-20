-- Para seleccionar el tema por defecto debo ordenarlo como el primero en la tabla
return
{
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"tanvirtin/monokai.nvim",
		config = function()
			vim.cmd.colorscheme 'monokai_pro'
		end,
	},
	{
		-- Theme inspired by Atom
		'navarasu/onedark.nvim',
		config = function()
			vim.cmd.colorscheme 'onedark'
		end,
	},
	{ "ellisonleao/gruvbox.nvim" }
};
