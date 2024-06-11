-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return
{
	{
		'nvim-telescope/telescope.nvim',
		name = 'telescope',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			-- Fuzzy Finder Algorithm which requires local dependencies to be built.
			-- Only load if `make` is available. Make sure you have the system
			-- requirements installed.
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
		},
	},
	{
		'nvim-lua/plenary.nvim',
		name = 'plenary',
	},
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"plenary",
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "plenary" },
		opts = {
			keywords = {
				TODO = { icon = " ", color = "info", alt = { "WIP", "XXX" } },
				NOTE = { icon = " ", color = "default", alt = { "INFO" } },
			}
		}
	},
	{
		'rmagatti/goto-preview',
		opts = {
			default_mappings = true
		}
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "telescope", "plenary" }
	},
	{ 'ThePrimeagen/harpoon',  name = "harpoon" },
	{
		"folke/twilight.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	}, -- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim', opts = {} },
	-- Useful plugin to show you pending keybinds.
	{ 'folke/which-key.nvim',  opts = {} },
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',
	{
		-- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			{ 'williamboman/mason.nvim', config = true },
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',
		},
	},
	{
		-- Adds git related signs to the gutter, as well as utilities for managing changes
		'lewis6991/gitsigns.nvim',
		opts = {
			-- See `:help gitsigns.txt`
			signs = {
				add          = { text = '│' },
				change       = { text = '│' },
				delete       = { text = '_' },
				topdelete    = { text = '‾' },
				changedelete = { text = '~' },
				untracked    = { text = '┆' },
			},
			on_attach = function(bufnr)
				-- vim.keymap.set('n', '<leader>gp', require('gitsigns').prev_hunk,
				-- 	{ buffer = bufnr, desc = '[G]it [P]revious Hunk' })
				vim.keymap.set('n', '<leader>gn', require('gitsigns').next_hunk,
					{ buffer = bufnr, desc = '[G]it [N]ext Hunk' })
				vim.keymap.set('n', '<leader>gp', require('gitsigns').preview_hunk,
					{ buffer = bufnr, desc = '[G]it [P]review [H]unk' })
				vim.keymap.set('n', '<leader>gs', require('gitsigns').stage_hunk,
					{ buffer = bufnr, desc = '[G]it [S]tage [H]unk' })
				vim.cmd('highlight GitSignsAdd guifg=LightGreen')
				vim.cmd('highlight GitSignsChange guifg=Yellow')
				vim.cmd('highlight GitSignsDelete guifg=Red')
			end,
		},
	},
	{
		-- TODO: Mostrar ruta de archivo
		-- Set lualine as statusline
		'nvim-lualine/lualine.nvim',
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = false,
				theme = 'gruvbox',
				component_separators = '|',
				section_separators = '',
			},
			sections = {
				lualine_a = {
					{
						'filename',
						path = 1
					}
				}
			}
		},
	},
	{
		-- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},
	{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},
	{
		"onsails/lspkind-nvim"
	}

};
