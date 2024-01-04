return {
	{
		"craftzdog/solarized-osaka.nvim",
		name = "solarized-osaka",
		lazy = true,
		priority = 1000,
		opts = {},
	},
	{
		"tanvirtin/monokai.nvim",
		name = "monokai",
		lazy = true,
		config = function()
			vim.cmd.colorscheme 'monokai_pro'
		end,
	},
	{
		-- Theme inspired by Atom
		'navarasu/onedark.nvim',
		name = "onedark",
		lazy = true,
		config = function()
			vim.cmd.colorscheme 'onedark'
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = true,
		config = function()
			vim.cmd.colorscheme 'gruvbox'
		end,
	},
	{
		'jesseleite/nvim-noirbuddy',
		name = 'noirbuddy',
		dependencies = {
			{ 'tjdevries/colorbuddy.nvim', branch = 'dev' }
		},
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme 'noirbuddy'
			require('noirbuddy').setup {
				preset = 'slate',
			}
		end,
	},
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		lazy = true,
		config = function()
			vim.cmd.colorscheme 'rose-pine'
		end,
	}
};
