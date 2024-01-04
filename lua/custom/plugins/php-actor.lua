-- php-actor.lua
-- Source: https://github.com/phpactor/phpactor
-- Language server for PHP. Still learning

return {
	'gbprod/phpactor.nvim',
	ft = 'php',
	dependencies = {
		"nvim-lua/plenary.nvim", -- required to update phpactor
		"neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
	}
}
