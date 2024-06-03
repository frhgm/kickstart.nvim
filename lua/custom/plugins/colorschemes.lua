function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"craftzdog/solarized-osaka.nvim",
		name = "solarized-osaka",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"tanvirtin/monokai.nvim",
		name = "monokai",
		lazy = false,
		config = function()
			vim.cmd.colorscheme 'monokai_pro'
		end,
	},
	{
		-- Theme inspired by Atom
		'navarasu/onedark.nvim',
		name = "onedark",
		lazy = false,
		config = function()
			vim.cmd.colorscheme 'onedark'
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = false,
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
		lazy = false,
		config = function()
			require('rose-pine').setup({
				disable_background = true,
			})
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = false,
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = false },
					keywords = { italic = false },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			})
			vim.cmd("colorscheme tokyonight")
		end
	},
};
