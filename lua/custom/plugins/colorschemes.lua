return {
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
	{ "ellisonleao/gruvbox.nvim" },
	{
		'jesseleite/nvim-noirbuddy',
		dependencies = {
			{ 'tjdevries/colorbuddy.nvim', branch = 'dev' }
		},
		lazy = false,
		priority = 1000,
		opts = {
		},
	},
	{ 'rose-pine/neovim',        name = 'rose-pine' }
};
