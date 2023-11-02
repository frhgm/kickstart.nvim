--https://github.com/nvim-orgmode/orgmode/blob/master/DOCS.md#note-mappings
return
{ {
	'nvim-orgmode/orgmode',
	dependencies = {
		{ 'nvim-treesitter/nvim-treesitter', lazy = true },
	},
	event = 'VeryLazy',
	config = function()
		-- Load treesitter grammar for org
		require('orgmode').setup_ts_grammar()

		-- Setup orgmode
		require('orgmode').setup({
			org_agenda_files = '~/orgfiles/**/*',
			org_default_notes_file = '~/orgfiles/refile.org',
		})
	end,
},

	{
		'akinsho/org-bullets.nvim',
		config = function()
			require('org-bullets').setup()
		end,
	}
}
