-- dadbod.lua
-- Source: https://github.com/tpope/vim-dadbod
-- Permite acceder a bases de datos simplemente dentro de Neovim

return {
	"tpope/vim-dadbod",
	opt = true,
	requires = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		--NOTE: Puedo ocupar esta tecnica para mantener estos archivos limpios
		require("config.dadbod").setup()
	end,
}
