local config = {
	logging = true,
	filetype = {
		javascript = {
			-- prettierd
			function()
				return {
					exe = "prettierd",
					args = { vim.api.nvim_buf_get_name(0) },
					stdin = true
				}
			end
		},
		-- other formatters ...
	}
}

return config;
