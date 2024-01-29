--https://github.com/epwalsh/obsidian.nvim
return {
	"epwalsh/obsidian.nvim",
	ft = "markdown",
	lazy = true,
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		"BufReadPre C:/Users/frhgm/Documents/Markdown/Obsidian/**.md",
		"BufNewFile C:/Users/frhgm/Documents/Markdown/Obsidian/**.md",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
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
	config = function()
		vim.opt.conceallevel = 2
	end,
}
