-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return
{
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			keywords = {
				TODO = { icon = " ", color = "info", alt = { "WIP", "XXX" } },
				NOTE = { icon = " ", color = "default", alt = { "INFO" } },
			}
		}
	},
	{
		'rmagatti/goto-preview',
		config = {
			default_mappings = true
		}
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "telescope", "nvim-lua/plenary.nvim" }
	},
	{ 'ThePrimeagen/harpoon', name = "harpoon" },
	{
		"folke/twilight.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	}
};
