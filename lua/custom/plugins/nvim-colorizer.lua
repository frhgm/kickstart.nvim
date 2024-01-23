return {
	'NvChad/nvim-colorizer.lua',
	opts = {
		user_default_options = {
			mode = 'background',
			rgb_fn = true,
			-- RRGGBBAA
			hex_colors = true,
			-- #RRGGBBAA
			css = true,
			-- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
			css_fn = true,
			-- Enable all CSS *functions*: rgb_fn, hsl_fn
			tailwind = true,
		},
	}
}
