--https://github.com/epwalsh/obsidian.nvim
return {
	"epwalsh/obsidian.nvim",
	version = "*",
	ft = "markdown",
	lazy = true,
	dependencies = {
		"plenary",
	},
	config = function()
		vim.opt.conceallevel = 2
	end,
}
