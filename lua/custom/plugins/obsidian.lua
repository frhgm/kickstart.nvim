--https://github.com/epwalsh/obsidian.nvim
return {
	"epwalsh/obsidian.nvim",
	ft = "markdown",
	lazy = true,
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		"BufReadPre /home/felipe/Documents/markdown/Obsidian/**.md",
		"BufNewFile /home/felipe/Documents/markdown/Obsidian/**.md",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Documents/markdown/Obsidian",
			}
		},

		-- see below for full list of options 👇
	},
}
