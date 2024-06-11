return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"plenary",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup()
		require("telescope").load_extension("refactoring")
		vim.keymap.set(
			{ "n", "x" },
			"<leader>sz",
			function() require('telescope').extensions.refactoring.refactors() end,
			{ desc = "[T]elescope Z[R]efactor" }
		)
	end,
}
