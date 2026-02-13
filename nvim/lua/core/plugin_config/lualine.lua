require("lualine").setup({
	options = {
		theme = "auto",
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			{ "filename", file_status = false, path = 1 },
		},
		lualine_c = {
			"branch",
			"diff",
			"diagnostics",
		},
		lualine_x = {},
		lualine_y = { "filetype" },
		lualine_z = { "%l:%c", "%p%%/%L" },
	},
	inactive_sections = {
		lualine_c = { "%f %y %m" },
		lualine_x = {},
	},
})
